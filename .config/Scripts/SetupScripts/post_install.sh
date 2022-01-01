host="arch"

ln -sf /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "${host}" > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ${host}.localdomain ${host}" >> /etc/hosts

pacman -S --noconfirm --needed xorg-server xorg-xrandr
pacman -S --noconfirm --needed sudo grub efibootmgr
# systemctl enable lightdm.service dhcpcd
# groupadd -r autologin

# sed -i 's+#greeter-session=.*+greeter-session=lightdm-gtk-greeter+g' /etc/lightdm/lightdm.conf
sed -i 's+# %wheel ALL=(ALL) ALL+ %wheel ALL=(ALL) ALL+g' /etc/sudoers
## autologin
###
## grub
# grub-install --target="i386-pc" /dev/sda
# grub-install --target=x86_64-efi --efi-directory=boot --bootloader-id=GRUB
# grub-mkconfig -o /boot/grub/grub.cfg
##
