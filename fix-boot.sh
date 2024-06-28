#!/bin/bash

# Check if script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Set the path to the root of your system
CHROOTPATH="/mnt"

# Make sure the target directory exists
mkdir -p $CHROOTPATH

# Mount root filesystem (assumes it's already mounted or you need to add the mount command here)

# Mount virtual filesystems
mount /proc $CHROOTPATH/proc
mount /sys $CHROOTPATH/sys
mount /dev $CHROOTPATH/dev
mount /etc $CHROOTPATH/etc
mount /var $CHROOTPATH/var
mount /boot $CHROOTPATH/boot
mount /opt $CHROOTPATH/opt
# mount /dev/pts $CHROOTPATH/dev/pts

# Mount other necessary filesystems
# mount -o bind /run $CHROOTPATH/run

# Chroot and update grub
chroot $CHROOTPATH /bin/bash -c "update-grub"

# Unmount filesystems
umount $CHROOTPATH/proc
umount $CHROOTPATH/sys
umount $CHROOTPATH/dev
umount $CHROOTPATH/etc
umount $CHROOTPATH/var
umount $CHROOTPATH/boot
umount $CHROOTPATH/opt

echo "GRUB update completed and filesystems unmounted."
