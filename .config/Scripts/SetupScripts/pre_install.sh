# timedatectl set-ntp true
# echo "Server = http://mirror.xeonbd.com/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
# mount -t 9p -o trans=virtio /hostshare /shared
# cp /shared/mirrorlist /etc/pacman.d/

echo "Server = http://mirror.xeonbd.com/archlinux/\$repo/os/\$arch" >> /etc/pacman.d/mirrorlist

pkgs=(
    "base" "linux-zen" "qemu-guest-agent" "grub"
    "zsh" "git" "sudo" "lua"
    "dhcpcd" "openssh"
    "xorg-server" "xorg-xinit" "xorg-xrandr" "xorg-xmodmap"
    "awesome" "lxsession" "gnu-free-fonts" "alacritty" "nitrogen" "pcmanfm"
    "rofi" "procs" "rsync"
    "neovim" "python-neovim" "fzf" "ripgrep" "npm" "clang" "time" "xclip"
)

pacman -Sy &&
pacstrap /mnt ${pkgs[@]} &&
genfstab -U /mnt >> /mnt/etc/fstab
