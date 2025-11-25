---
title: "Arch Apps"
date: 2025-11-25T09:24:54-03:00
url: "/tutorials/arch-apps/"
draft: false
---

# A collection of applications to improve desktop experience.

### GNOME:

```bash
sudo pacman -S obs-studio steam discord qbittorrent kdenlive vlc libreoffice-fresh blanket wine timeshift lutris gimp obsidian network-manager-applet gparted audacity signal-desktop goverlay openrgb piper chromium guvcview ffmpegthumbs ffmpegthumbnailer kimageformats qt6-imageformats nvtop gamemode tree btop
```

```bash
sudo pacman -Rns $(pacman -Qtdq)
```

```bash
yay -S brave-bin spotify localsend-bin 1password extension-manager menulibre gdm-settings upscayl-bin protontricks steamtinkerlaunch-git proton-vpn-gtk-app hunspell-en_gb hunspell-pt-br warsaw-bin oversteer proton-pass-bin ttf-ms-fonts ffmpeg-audio-thumbnailer visual-studio-code-bin
```

```bash
yay -S vscodium-bin
```
***

### KDE Plasma:

```bash
sudo pacman -S obs-studio steam discord qbittorrent kdenlive vlc libreoffice-fresh wine timeshift kate lutris gimp obsidian network-manager-applet audacity signal-desktop goverlay openrgb piper chromium btop nvtop filelight gamemode okular ark gwenview spectacle kwalletmanager kalk partitionmanager guvcview-qt kfind ksystemlog elisa kmail kgeography kcolorchooser kclock ffmpegthumbs ffmpegthumbnailer kimageformats qt6-imageformats tree
```

```bash
sudo pacman -Rns $(pacman -Qtdq)
```

```bash
yay -S brave-bin spotify localsend-bin 1password upscayl-bin protontricks steamtinkerlaunch-git proton-vpn-gtk-app hunspell-en_gb hunspell-pt-br hunspell-pt_pt warsaw-bin oversteer breezex-cursor-theme proton-pass-bin ttf-ms-fonts ffmpeg-audio-thumbnailer visual-studio-code-bin
```

```bash
yay -S vscodium-bin
```

### Misc

If you have an EPSON printer, install the following:

1.  Install the driver
    ```bash
    yay -S epson-inkjet-printer-escpr
    ```

2.  Enable and start CUPS service:
    ```bash
    sudo systemctl enable cups && sudo systemctl start cups
    ```

3.  Now it should be working. You can also check it at:
    ```bash
    http://localhost:631
    ```

### Quick Note
I highly recommend you check out the **[Arch Post Install](https://eloymelo.com/tutorials/arch-post-install/)** guide first If you haven't yet.