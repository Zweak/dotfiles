## Dependencies:

Pacman:
```console
sudo pacman -Syu git nano gtk3 dhcpcd firefox neofetch  \
wget zsh starship htop unzip polkit-kde-agent   \
xdg-desktop-portal-hyprland qt5-wayland qt6-wayland \
dunst ttf-jetbrains-mono ttf-jetbrains-mono-nerd    \
awesome-terminal-fonts $(pacman -Ssq noto-fonts)
```

AUR:
```console
yay -S hyprland swww alacritty thunar wofi waybar google-chrome xwaylandvideobridge-bin
```

GPU Drivers:
```console
yay -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings
```

Git Repos:
```console
# Yay: 
git clone https://aur.archlinux.org/yay-bin.git

# Zsh:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

## Programs
```console
sudo pacman -S discord github-cli baobab extra/bind \
nautilus vlc obs-studio docker docker-compose gnome-clocks  \
imagemagick font-manager

```
```console
yay -S visual-studio-code-bin btop brave-bin upscayl-bin anaconda
```

### Self Configure
- chmod +x all .sh files
- nvidia_drivers: [@korvahannu repo](https://github.com/korvahannu/arch-nvidia-drivers-installation-guide)
- hyprland config: env_vars display theme, xwaylandvideobridge window rules, [Must_Have](https://wiki.hyprland.org/Useful-Utilities/Must-have/), [Useful_Utils](https://wiki.hyprland.org/Useful-Utilities/)
- disable_hardware_acceleratrion: chrome vscode discord
- zsh: bashrc:'exec zsh', zshrc:eval "$(starship init zsh)", plugins:syntax_high autosuggestions
- dns => /etc/dhcpcd.conf:'nohook resolv.conf' /etc/NetworkManager/NetworkManager.conf:'[main]\n dns=none\n rc-manager=unmanaged',  /etc/resolv.conf: 1.1.1.1,1.0.0.1
- docker_perms: 'sudo groupadd docker', 'sudo usermod -aG docker $USER', 'logout'
- github auth
- wallpaper directory (~/wallpapers)