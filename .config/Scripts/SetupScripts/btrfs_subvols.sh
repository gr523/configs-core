#!/bin/sh

mount -L arch /mnt

for i in {,home,shome,root,.snapshots,var_log,var_cache,flatpak}; do 
    btrfs su cr "/mnt/@$i"; 
done

umount /mnt

mount -o subvol=@,compress=lzo,space_cache=v2,noatime,x-mount.mkdir -L arch /mnt;

for i in {home,shome,root,.snapshots}; do
    mount -o subvol="@$i",compress=lzo,space_cache=v2,noatime,x-mount.mkdir -L arch "/mnt/$i";
done

for i in {log,cache}; do 
    mount -o subvol="@var_$i",compress=lzo,space_cache=v2,noatime,x-mount.mkdir -L arch "/mnt/var/$i";
done

mount -o subvol="@flatpak",compress=lzo,space_cache=v2,noatime,x-mount.mkdir -L arch /mnt/var/lib/flatpak;

mount -L EFI_ARCH -o x-mount.mkdir /mnt/efi

lsblk
