#!/usr/bin/bash
set -euo pipefail

# =========================
# CONFIG
# =========================
UPDATE_DIR="/tmp/update"

ROOTDEV="mmcblk1"
BOOT_PART="/dev/${ROOTDEV}p1"
ROOT_A="/dev/${ROOTDEV}p2"
DATA_PART="/dev/${ROOTDEV}p3"
ROOT_B="/dev/${ROOTDEV}p4"

BOOT_MOUNT="/run/media/BOOT-mmcblk1p1"
WORK_MOUNT="/mnt/rr2_target_rootfs"

BOOTARGS_P2="earlycon console=ttyPS0,115200 root=/dev/${ROOTDEV}p2 rw rootwait"
BOOTARGS_P4="earlycon console=ttyPS0,115200 root=/dev/${ROOTDEV}p4 rw rootwait"

LOG_DIR="/run/media/nvme0n1p1/rr2_update"
LOG_FILE="$LOG_DIR/Image_update_logs"

BOOTBIN_UPDATED="NO"
IMAGEUB_UPDATED="NO"
BOOTSCR_UPDATED="NO"
BOOT_UPDATE_READY="NO"
BOOT_MOUNTED_BY_SCRIPT="NO"

# =========================
# HELPERS
# =========================
log()  { echo "[INFO] $*"; }
warn() { echo "[WARN] $*" >&2; }
die()  { echo "[ERROR] $*" >&2; exit 1; }

require_root() {
    [ "$(id -u)" -eq 0 ] || die "Run as root"
}

require_file() {
    [ -f "$1" ] || die "Missing file: $1"
}

get_active_root() {
    findmnt -n -o SOURCE /
}

cleanup() {
    sync || true

    if mountpoint -q "$WORK_MOUNT"; then
        umount "$WORK_MOUNT" || true
    fi

    if [ "$BOOT_MOUNTED_BY_SCRIPT" = "YES" ] && mountpoint -q "$BOOT_MOUNT"; then
        umount "$BOOT_MOUNT" || true
    fi
}
trap cleanup EXIT

# =========================
# PARTITION LOGIC
# =========================
choose_target_part() {
    local active
    active="$(get_active_root)"

    if [ "$active" = "$ROOT_A" ]; then
        TARGET_PART="4"
        TARGET_DEV="$ROOT_B"
        TARGET_BOOTARGS="$BOOTARGS_P4"
    elif [ "$active" = "$ROOT_B" ]; then
        TARGET_PART="2"
        TARGET_DEV="$ROOT_A"
        TARGET_BOOTARGS="$BOOTARGS_P2"
    else
        die "Unknown active root: $active"
    fi

    log "Active rootfs  : $active"
    log "Target rootfs  : $TARGET_DEV"
}

sanity_check_target() {
    local active
    active="$(get_active_root)"

    [ -b "$TARGET_DEV" ] || die "Target device not found: $TARGET_DEV"
    [ "$TARGET_DEV" != "$DATA_PART" ] || die "Refusing to touch DATA partition: $DATA_PART"
    [ "$active" != "$TARGET_DEV" ] || die "Refusing to format active rootfs: $TARGET_DEV"
}

unmount_target_everywhere() {
    local mp
    while read -r mp; do
        [ -n "$mp" ] || continue
        log "Unmounting $TARGET_DEV from $mp"
        umount "$mp" || die "Failed to unmount $TARGET_DEV from $mp"
    done < <(findmnt -rn -S "$TARGET_DEV" -o TARGET || true)
}

# =========================
# INPUT CHECKS
# =========================
check_inputs() {
    [ -d "$UPDATE_DIR" ] || die "Update dir not found: $UPDATE_DIR"
    require_file "$UPDATE_DIR/rootfs.tar.gz"

    if [ -f "$UPDATE_DIR/BOOT.BIN" ] && \
       [ -f "$UPDATE_DIR/image.ub" ] && \
       [ -f "$UPDATE_DIR/boot.scr" ]; then
        BOOT_UPDATE_READY="YES"
        log "All boot files present. BOOT partition update enabled."
    else
        BOOT_UPDATE_READY="NO"
        if [ -f "$UPDATE_DIR/BOOT.BIN" ] || \
           [ -f "$UPDATE_DIR/image.ub" ] || \
           [ -f "$UPDATE_DIR/boot.scr" ]; then
            warn "Partial boot files detected."
            warn "BOOT update will be skipped."
        else
            log "No boot files provided. Only rootfs will be updated."
        fi
    fi
}

show_plan() {
    echo
    echo "Update plan:"
    echo "  Update dir        : $UPDATE_DIR"
    echo "  Previous rootfs   : $PREVIOUS_PARTITION"
    echo "  Target rootfs     : $TARGET_DEV"
    echo "  BOOT partition    : $BOOT_PART"
    echo "  DATA partition    : $DATA_PART (untouched)"
    echo "  BOOT update ready : $BOOT_UPDATE_READY"
    echo "  Next bootargs     : $TARGET_BOOTARGS"
    echo
}

# =========================
# ROOTFS UPDATE
# =========================
prepare_target_rootfs() {
    mkdir -p "$WORK_MOUNT"
    mountpoint -q "$WORK_MOUNT" && umount "$WORK_MOUNT"
    unmount_target_everywhere

    log "Formatting inactive rootfs partition: $TARGET_DEV"
    mkfs.ext4 -F -L "rootfs_${TARGET_PART}" -E lazy_itable_init=0,lazy_journal_init=0 "$TARGET_DEV"

    log "Mounting target rootfs: $TARGET_DEV -> $WORK_MOUNT"
    mount "$TARGET_DEV" "$WORK_MOUNT"
}

extract_rootfs() {
    log "Extracting rootfs..."
    tar -xzf "$UPDATE_DIR/rootfs.tar.gz" -C "$WORK_MOUNT"
    mkdir -p "$WORK_MOUNT"/{proc,sys,dev,run,tmp,mnt,media}
}

validate_rootfs() {
    log "Validating rootfs..."
    [ -d "$WORK_MOUNT/etc" ] || die "Missing /etc"
    [ -f "$WORK_MOUNT/etc/passwd" ] || die "Missing passwd"
    [ -e "$WORK_MOUNT/sbin/init" ] || die "Missing init"
    log "Rootfs validation passed"
}

# =========================
# BOOT UPDATE
# =========================
ensure_boot_mounted() {
    mountpoint -q "$BOOT_MOUNT" || mount "$BOOT_PART" "$BOOT_MOUNT"
}

update_boot_files_if_complete() {
    if [ "$BOOT_UPDATE_READY" != "YES" ]; then
        log "Skipping BOOT update"
        return
    fi

    ensure_boot_mounted

    cp -f "$UPDATE_DIR/BOOT.BIN" "$BOOT_MOUNT/BOOT.BIN"
    cp -f "$UPDATE_DIR/image.ub" "$BOOT_MOUNT/image.ub"
    cp -f "$UPDATE_DIR/boot.scr" "$BOOT_MOUNT/boot.scr"

    BOOTBIN_UPDATED="YES"
    IMAGEUB_UPDATED="YES"
    BOOTSCR_UPDATED="YES"
}

# =========================
# LOGGING
# =========================
init_log() {
    mkdir -p "$LOG_DIR"

    if [ ! -f "$LOG_FILE" ]; then
        printf "%-18s | %-18s | %-15s | %-150s | %-25s | %-25s | %-8s | %-8s | %-8s\n" \
        "DATE" "TIME" "UPDATED BY" "MESSAGE" "PREVIOUS" "TARGET" \
        "BOOTBIN" "IMAGEUB" "BOOTSCR" > "$LOG_FILE"
    fi
}

normalize_user() {
    case "$(echo "$1" | tr '[:upper:]' '[:lower:]')" in
        t) echo "Trivedi" ;;
        s) echo "Susheel" ;;
        n) echo "Naveen" ;;
        *) echo "$1" ;;
    esac
}

get_metadata() {
    read -r -p "Updated by: " u
    read -r -p "Message (max 150 chars): " m
    [ "${#m}" -gt 150 ] && m="${m:0:147}..."
    UPDATED_BY="$(normalize_user "$u")"
    UPDATE_MSG="$m"
}

write_log() {
    printf "%-18s | %-18s | %-15s | %-150s | %-25s | %-25s | %-8s | %-8s | %-8s\n" \
        "$(TZ=Asia/Kolkata date '+%d, %b, %Y')" \
        "$(TZ=Asia/Kolkata date '+%I:%M:%S %p')" \
        "$UPDATED_BY" "$UPDATE_MSG" \
        "$PREVIOUS_PARTITION" "$TARGET_DEV" \
        "$BOOTBIN_UPDATED" "$IMAGEUB_UPDATED" "$BOOTSCR_UPDATED" >> "$LOG_FILE"

    echo "" >> "$LOG_FILE"
    sync
}

# =========================
# MAIN
# =========================
main() {
    require_root
    check_inputs

    PREVIOUS_PARTITION="$(get_active_root)"
    choose_target_part
    sanity_check_target
    show_plan

    read -r -p "Proceed? (yes/no): " go
    [ "$go" = "yes" ] || die "Aborted"

    init_log
    get_metadata

    prepare_target_rootfs
    extract_rootfs
    validate_rootfs

    update_boot_files_if_complete

    write_log

    cleanup

    log "Update completed successfully"

    read -r -p "Reboot now? (yes/no): " rb
    [ "$rb" = "yes" ] && reboot
}

main "$@"
