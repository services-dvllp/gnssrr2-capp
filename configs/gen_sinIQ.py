import numpy as np
import matplotlib.pyplot as plt

# Parameters
fs = 15.36e6 * 8 # Sampling frequency in Hz
f = 1.5e6       # Signal frequency in Hz
N = 122880#1000*1e-6 * fs #1536 * 1 *8     # Number of samples

# Time array
t = np.arange(N) / fs

# Angular frequency
omega = 2 * np.pi * f

# Generate I and Q components
I = np.cos(omega * t)
Q = np.sin(omega * t)

# Scale to signed 14-bit values, then store as signed 16-bit.
# Range is -8192..8191, so writing as int16 preserves the sign extension.
scale_14bit = (1 << 13) - 1
min_14bit = -(1 << 13)
max_14bit = (1 << 13) - 1

I_int = np.clip(np.round(I * scale_14bit), min_14bit, max_14bit).astype(np.int16)
Q_int = np.clip(np.round(Q * scale_14bit), min_14bit, max_14bit).astype(np.int16)

# Interleave I and Q as IQIQ
interleaved = np.empty((N*2,), dtype=np.int16)
interleaved[0::2] = I_int
interleaved[1::2] = Q_int

# Save interleaved data to binary file
interleaved.tofile('sin_iq_interleaved1p5M.bin')

# Save interleaved data to text file
with open('sin_iq_interleaved1p5M.txt', 'w') as file:
    for i in range(0, len(interleaved), 1):
        file.write(f"{interleaved[i]},\n")

# Save to a text file for inspection or further use
#with open('sin_iq_data.txt', 'w') as file:
#    for i in range(N):
#        file.write(f"{I_int[i]}\t{Q_int[i]}\n")

# Plot I and Q samples separately
plt.figure(figsize=(10, 6))
plt.subplot(2, 1, 1)
plt.plot(I_int)
plt.title('I Samples')
plt.xlabel('Sample Index')
plt.ylabel('Amplitude')
plt.grid(True)

plt.subplot(2, 1, 2)
plt.plot(Q_int)
plt.title('Q Samples')
plt.xlabel('Sample Index')
plt.ylabel('Amplitude')
plt.grid(True)

plt.tight_layout()
plt.savefig('iq_plot.png')
# plt.show()

print("Generated 1536 I and Q samples as signed 14-bit values stored in 16-bit format")
print("Interleaved IQIQ data saved to sin_iq_interleaved.bin and sin_iq_interleaved.txt")
print("Plot saved to iq_plot.png")
