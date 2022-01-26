host="arch"
user="space"

ln -sf /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
hwclock -s
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "${host}" > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ${host}.localdomain ${host}" >> /etc/hosts

systemctl enable dhcpcd
sed -i 's+# %wheel ALL=(ALL) ALL+ %wheel ALL=(ALL) ALL+g' /etc/sudoers

echo "Change password for root"
passwd
useradd -mG wheel,storage,audio,video ${user}
echo "Change password for ${user}"
passwd ${user}

mkdir /shome
chown ${user}:${user} /shome

###
## grub
grub-install --target="i386-pc" /dev/vda
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
##
