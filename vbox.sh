# Install virtual box guest utilities
#
# See: https://wiki.manjaro.org/index.php?title=VirtualBox
#

pamac install virtualbox-guest-utils $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-virtualbox-guest-modules"}' ORS=' ')
sudo modprobe vboxguest vboxvideo vboxsf
sudo gpasswd -a $USER vboxsf
sudo systemctl enable --now vboxservice.service


