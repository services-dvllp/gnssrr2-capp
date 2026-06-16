#!/usr/bin/env bash
set -euo pipefail

############################################
# User-configurable settings
############################################

SRC_DIR="${HOME}/projects/antSdr/t510/proj1/t510zcu47dr/images/linux"

OUT_BASE_DIR="${SRC_DIR}/sdimage_out"

# Partition sizes in MiB
BOOT_SIZE_MIB=256
ROOT_SIZE_MIB=4096
DATA_SIZE_MIB=1024

# Image name prefix
IMG_PREFIX="rr2_sdimage"

############################################
# Derived values
############################################

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
OUT_DIR="${OUT_BASE_DIR}/${IMG_PREFIX}_${TIMESTAMP}"
IMG_FILE="${OUT_DIR}/${IMG_PREFIX}_${TIMESTAMP}.img"

BOOT_MNT="${OUT_DIR}/mnt_boot"
ROOT_MNT="${OUT_DIR}/mnt_root"
DATA_MNT="${OUT_DIR}/mnt_data"

LOOPDEV=""

REQUIRED_FILES=(
    "BOOT.BIN"
    "boot.scr"
    "image.ub"
    "rootfs.tar.gz"
)

############################################
# Helper functions
############################################

cleanup() {
    set +e

    sync

    if mountpoint -q "${DATA_MNT}"; then
        sudo umount "${DATA_MNT}"
    fi
    if mountpoint -q "${ROOT_MNT}"; then
        sudo umount "${ROOT_MNT}"
    fi
    if mountpoint -q "${BOOT_MNT}"; then
        sudo umount "${BOOT_MNT}"
    fi

    if [[ -n "${LOOPDEV}" ]]; then
        sudo losetup -d "${LOOPDEV}" 2>/dev/null || true
    fi
}
trap cleanup EXIT

require_cmd() {
    command -v "$1" >/dev/null 2>&1 || {
        echo "ERROR: Required command not found: $1"
        exit 1
    }
}

############################################
# Pre-checks
############################################

require_cmd dd
require_cmd parted
require_cmd losetup
require_cmd mkfs.vfat
require_cmd mkfs.ext4
require_cmd tar
require_cmd du
require_cmd sync
require_cmd stat

if [[ ! -d "${SRC_DIR}" ]]; then
    echo "ERROR: Source directory does not exist:"
    echo "  ${SRC_DIR}"
    exit 1
fi

for f in "${REQUIRED_FILES[@]}"; do
    if [[ ! -e "${SRC_DIR}/${f}" ]]; then
        echo "ERROR: Missing required file:"
        echo "  ${SRC_DIR}/${f}"
        exit 1
    fi
done

mkdir -p "${OUT_DIR}"
mkdir -p "${BOOT_MNT}" "${ROOT_MNT}" "${DATA_MNT}"

############################################
# Optional sanity check on rootfs size
############################################

ROOTFS_TAR="${SRC_DIR}/rootfs.tar.gz"
ROOTFS_TAR_SIZE_BYTES="$(stat -c %s "${ROOTFS_TAR}")"
ROOTFS_TAR_SIZE_MIB=$(( (ROOTFS_TAR_SIZE_BYTES + 1024*1024 - 1) / (1024*1024) ))

echo "Source directory : ${SRC_DIR}"
echo "Output directory : ${OUT_DIR}"
echo "Image file       : ${IMG_FILE}"
echo "rootfs.tar.gz    : ${ROOTFS_TAR_SIZE_MIB} MiB (compressed)"
echo
echo "Partition plan:"
echo "  BOOT : ${BOOT_SIZE_MIB} MiB"
echo "  ROOT_A : ${ROOT_SIZE_MIB} MiB"
echo "  DATA : ${DATA_SIZE_MIB} MiB"
echo "  ROOT_B : ${ROOT_SIZE_MIB} MiB"
echo

############################################
# Create blank image
############################################

# UPDATED: added second ROOT partition
TOTAL_SIZE_MIB=$((BOOT_SIZE_MIB + ROOT_SIZE_MIB + DATA_SIZE_MIB + ROOT_SIZE_MIB + 8))

echo "Creating blank image of ${TOTAL_SIZE_MIB} MiB ..."
dd if=/dev/zero of="${IMG_FILE}" bs=1M count="${TOTAL_SIZE_MIB}" status=progress

############################################
# Partition the image
############################################

P1_START_MIB=1
P1_END_MIB=$((P1_START_MIB + BOOT_SIZE_MIB))

P2_START_MIB=${P1_END_MIB}
P2_END_MIB=$((P2_START_MIB + ROOT_SIZE_MIB))

P3_START_MIB=${P2_END_MIB}
P3_END_MIB=$((P3_START_MIB + DATA_SIZE_MIB))

# NEW PARTITION (ROOT_B)
P4_START_MIB=${P3_END_MIB}
P4_END_MIB=$((P4_START_MIB + ROOT_SIZE_MIB))

echo "Partitioning image ..."
parted -s "${IMG_FILE}" mklabel msdos
parted -s "${IMG_FILE}" mkpart primary fat32 "${P1_START_MIB}MiB" "${P1_END_MIB}MiB"
parted -s "${IMG_FILE}" mkpart primary ext4  "${P2_START_MIB}MiB" "${P2_END_MIB}MiB"
parted -s "${IMG_FILE}" mkpart primary ext4  "${P3_START_MIB}MiB" "${P3_END_MIB}MiB"
parted -s "${IMG_FILE}" mkpart primary ext4  "${P4_START_MIB}MiB" "${P4_END_MIB}MiB"
parted -s "${IMG_FILE}" set 1 boot on

############################################
# Attach loop device
############################################

echo "Attaching loop device ..."
LOOPDEV="$(sudo losetup --find --show --partscan "${IMG_FILE}")"
echo "Loop device: ${LOOPDEV}"

sleep 1

############################################
# Create filesystems
############################################

echo "Creating filesystems ..."
sudo mkfs.vfat -F 32 -n BOOT "${LOOPDEV}p1"
sudo mkfs.ext4 -F -L ROOT_A "${LOOPDEV}p2"
sudo mkfs.ext4 -F -L DATA   "${LOOPDEV}p3"
sudo mkfs.ext4 -F -L ROOT_B "${LOOPDEV}p4"

############################################
# Mount partitions
############################################

echo "Mounting partitions ..."
sudo mount "${LOOPDEV}p1" "${BOOT_MNT}"
sudo mount "${LOOPDEV}p2" "${ROOT_MNT}"
sudo mount "${LOOPDEV}p3" "${DATA_MNT}"

############################################
# Populate BOOT
############################################

echo "Copying boot files ..."
sudo cp \
    "${SRC_DIR}/BOOT.BIN" \
    "${SRC_DIR}/boot.scr" \
    "${SRC_DIR}/image.ub" \
    "${BOOT_MNT}/"

############################################
# Populate ROOT (only ROOT_A = p2)
############################################

echo "Extracting rootfs.tar.gz into ROOT partition ..."
sudo tar xzvpf "${SRC_DIR}/rootfs.tar.gz" -C "${ROOT_MNT}"

############################################
# Final sync
############################################

echo "Syncing ..."
sync
sudo sync

echo
echo "Image created successfully:"
echo "  ${IMG_FILE}"
echo
echo "You can inspect it later by attaching with:"
echo "  sudo losetup -Pf ${IMG_FILE}"
echo
echo "And flash it to an SD card with something like:"
echo "  sudo dd if=${IMG_FILE} of=/dev/sdX bs=4M status=progress conv=fsync"
echo
