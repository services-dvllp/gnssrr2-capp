#!/usr/bin/env python3
"""
Generate Xilinx/AMD FIR Compiler .COE coefficients for:

    Complex input Fs  = 122.88 MHz
    Decimation factor = 2
    Complex output Fs = 61.44 MHz
    Useful complex BW = 54 MHz => passband +/-27 MHz

Filter specification:
    Fpass = 27.00 MHz
    Fstop = 34.44 MHz

The generated FIR is a real low-pass anti-aliasing filter.
Use the same coefficients for both I and Q paths.

Requires:
    pip install numpy scipy matplotlib

matplotlib is optional and only used if --plot is given.

python gen_firCoeffients.py \
  --num-taps 127 \
  --coeff-width 20 \
  --pass-ripple-db 0.02 \
  --stop-atten-db 80 \
  --output gnss_decim2_122p88_to_61p44_54MHzBW.coe

"""

import argparse
from pathlib import Path

import numpy as np
from scipy.signal import remez, freqz


def design_fir_equiripple(
    fs_hz: float,
    f_pass_hz: float,
    f_stop_hz: float,
    num_taps: int,
    passband_ripple_db: float,
    stopband_atten_db: float,
) -> np.ndarray:
    """
    Design an equiripple low-pass FIR using Parks-McClellan/Remez.

    passband_ripple_db is peak ripple target in dB.
    stopband_atten_db is stopband attenuation target in dB.

    The weights are derived approximately from allowed linear errors.
    """

    if f_pass_hz <= 0:
        raise ValueError("f_pass_hz must be > 0")

    if f_stop_hz <= f_pass_hz:
        raise ValueError("f_stop_hz must be greater than f_pass_hz")

    if f_stop_hz >= fs_hz / 2:
        raise ValueError("f_stop_hz must be less than Nyquist, fs_hz/2")

    if num_taps < 3:
        raise ValueError("num_taps must be >= 3")

    # Convert ripple specifications to approximate linear error limits.
    # Passband ripple in dB peak-to-peak style approximation.
    delta_p = (10 ** (passband_ripple_db / 20.0) - 1.0) / (
        10 ** (passband_ripple_db / 20.0) + 1.0
    )

    # Stopband amplitude limit.
    delta_s = 10 ** (-stopband_atten_db / 20.0)

    # Remez minimizes weighted error. Weight is inverse allowed error.
    weight_pass = 1.0 / delta_p
    weight_stop = 1.0 / delta_s

    # Normalize relative weights to avoid very large values.
    weights = [1.0, weight_stop / weight_pass]

    coeff = remez(
        num_taps,
        [0.0, f_pass_hz, f_stop_hz, fs_hz / 2.0],
        [1.0, 0.0],
        weight=weights,
        fs=fs_hz,
        maxiter=100,
    )

    return coeff


def quantize_coefficients(coeff: np.ndarray, coeff_width: int) -> np.ndarray:
    """
    Quantize floating-point FIR coefficients to signed integer coefficients.

    FIR Compiler interprets the coefficient width according to the IP settings.
    This script scales to signed Q1.(B-1)-style full-scale integer range.

        max positive =  2^(B-1) - 1
        min negative = -2^(B-1)
    """

    if coeff_width < 2:
        raise ValueError("coeff_width must be >= 2")

    max_pos = 2 ** (coeff_width - 1) - 1
    min_neg = -(2 ** (coeff_width - 1))

    coeff_q = np.round(coeff * max_pos).astype(np.int64)
    coeff_q = np.clip(coeff_q, min_neg, max_pos)

    return coeff_q


def write_coe_file(path: Path, coeff_q: np.ndarray, radix: int = 10) -> None:
    """
    Write coefficients in Xilinx .COE format.

    Example:
        radix=10;
        coefdata=
        12,
        -45,
        ...
        12;
    """

    if radix not in (10, 16, 2):
        raise ValueError("radix must be 10, 16, or 2")

    with path.open("w", newline="\n") as f:
        f.write(f"radix={radix};\n")
        f.write("coefdata=\n")

        for i, c in enumerate(coeff_q):
            last = i == len(coeff_q) - 1

            if radix == 10:
                text = f"{int(c)}"
            elif radix == 16:
                # Two's-complement hex representation.
                width_bits = int(np.ceil(np.log2(np.max(np.abs(coeff_q)) + 1))) + 1
                width_nibbles = int(np.ceil(width_bits / 4))
                mask = (1 << (4 * width_nibbles)) - 1
                text = f"{int(c) & mask:0{width_nibbles}X}"
            else:
                text = bin(int(c))[2:] if c >= 0 else f"-{bin(abs(int(c)))[2:]}"

            f.write(text)
            f.write(";\n" if last else ",\n")


def analyze_filter(
    coeff: np.ndarray,
    fs_hz: float,
    f_pass_hz: float,
    f_stop_hz: float,
) -> None:
    """
    Print basic frequency-response metrics.
    """

    w, h = freqz(coeff, worN=131072, fs=fs_hz)
    mag = np.abs(h)
    mag_db = 20.0 * np.log10(np.maximum(mag, 1e-15))

    pass_idx = w <= f_pass_hz
    stop_idx = w >= f_stop_hz

    pass_mag_db = mag_db[pass_idx]
    stop_mag_db = mag_db[stop_idx]

    passband_ripple_pp_db = np.max(pass_mag_db) - np.min(pass_mag_db)
    stopband_max_db = np.max(stop_mag_db)

    print("Floating-point filter response:")
    print(f"  Passband ripple p-p : {passband_ripple_pp_db:.4f} dB")
    print(f"  Max stopband level  : {stopband_max_db:.2f} dB")


def plot_filter(coeff: np.ndarray, fs_hz: float, f_pass_hz: float, f_stop_hz: float) -> None:
    import matplotlib.pyplot as plt

    w, h = freqz(coeff, worN=131072, fs=fs_hz)
    mag_db = 20.0 * np.log10(np.maximum(np.abs(h), 1e-15))

    plt.figure()
    plt.plot(w / 1e6, mag_db)
    plt.axvline(f_pass_hz / 1e6, linestyle="--")
    plt.axvline(f_stop_hz / 1e6, linestyle="--")
    plt.xlabel("Frequency (MHz)")
    plt.ylabel("Magnitude (dB)")
    plt.title("FIR Decimator Anti-Alias Filter")
    plt.grid(True)
    plt.ylim([-120, 5])
    plt.show()


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Generate FIR Compiler .COE coefficients for 122.88 Msps to 61.44 Msps decimation."
    )

    parser.add_argument(
        "--output",
        default="gnss_decim2_122p88_to_61p44_54MHzBW.coe",
        help="Output .coe filename",
    )

    parser.add_argument(
        "--num-taps",
        type=int,
        default=127,
        help="Number of FIR taps. Use odd number for Type-I linear-phase FIR.",
    )

    parser.add_argument(
        "--coeff-width",
        type=int,
        default=20,
        help="Coefficient width in bits for quantization.",
    )

    parser.add_argument(
        "--pass-ripple-db",
        type=float,
        default=0.02,
        help="Target passband ripple in dB.",
    )

    parser.add_argument(
        "--stop-atten-db",
        type=float,
        default=80.0,
        help="Target stopband attenuation in dB.",
    )

    parser.add_argument(
        "--plot",
        action="store_true",
        help="Plot frequency response.",
    )

    args = parser.parse_args()

    # Fixed filter specification for your case.
    fs_in_hz = 122.88e6
    decimation = 2
    fs_out_hz = fs_in_hz / decimation

    complex_bw_hz = 54.0e6
    f_pass_hz = complex_bw_hz / 2.0

    # For decimation by 2:
    # Input frequency f_stop aliases to output passband edge:
    # f_stop - Fs_out = -Fpass
    # therefore f_stop = Fs_out - Fpass
    f_stop_hz = fs_out_hz - f_pass_hz

    print("FIR decimator specification:")
    print(f"  Fs input             : {fs_in_hz / 1e6:.6f} MHz")
    print(f"  Decimation           : {decimation}")
    print(f"  Fs output            : {fs_out_hz / 1e6:.6f} MHz")
    print(f"  Complex BW required  : {complex_bw_hz / 1e6:.6f} MHz")
    print(f"  Passband edge        : {f_pass_hz / 1e6:.6f} MHz")
    print(f"  Stopband start       : {f_stop_hz / 1e6:.6f} MHz")
    print(f"  Transition width     : {(f_stop_hz - f_pass_hz) / 1e6:.6f} MHz")
    print(f"  Number of taps       : {args.num_taps}")
    print(f"  Coefficient width    : {args.coeff_width} bits")

    coeff = design_fir_equiripple(
        fs_hz=fs_in_hz,
        f_pass_hz=f_pass_hz,
        f_stop_hz=f_stop_hz,
        num_taps=args.num_taps,
        passband_ripple_db=args.pass_ripple_db,
        stopband_atten_db=args.stop_atten_db,
    )

    # Normalize DC gain exactly to 1 before quantization.
    coeff = coeff / np.sum(coeff)

    coeff_q = quantize_coefficients(coeff, args.coeff_width)

    output_path = Path(args.output)
    write_coe_file(output_path, coeff_q, radix=10)

    print()
    analyze_filter(coeff, fs_in_hz, f_pass_hz, f_stop_hz)

    # Also analyze quantized coefficients after converting back to normalized float.
    scale = 2 ** (args.coeff_width - 1) - 1
    coeff_q_float = coeff_q.astype(np.float64) / scale

    print()
    print("Quantized filter response:")
    analyze_filter(coeff_q_float, fs_in_hz, f_pass_hz, f_stop_hz)

    print()
    print(f"Wrote COE file: {output_path.resolve()}")

    if args.plot:
        plot_filter(coeff_q_float, fs_in_hz, f_pass_hz, f_stop_hz)


if __name__ == "__main__":
    main()