---
title: "Debian Apps"
date: 2025-11-26T15:59:11-03:00
url: "/tutorials/debian/debian-apps/"
draft: false
---

# A collection of applications to improve desktop experience.

### GNOME:

```bash
sudo apt install obs-studio steam vlc libreoffice menulibre qbittorrent kdenlive wine protontricks lutris gimp gparted audacity goverlay piper guvcview chromium timeshift nvtop gnome-shell-extension-manager hunspell-pt-br hunspell-pt-pt openjdk-25-jdk nvidia-driver-libs:i386 heif-gdk-pixbuf passwd ffmpegthumbnailer libnotify-bin gamemode bluetooth bluez-cups bluez-meshd rclone fonts-ubuntu fastfetch btop
```

**KDE**:

```bash
sudo apt install obs-studio steam vlc libreoffice qbittorrent kdenlive wine protontricks lutris gimp audacity goverlay piper guvcview chromium timeshift nvtop hunspell-pt-br hunspell-pt-pt openjdk-25-jdk nvidia-driver-libs:i386 heif-gdk-pixbuf passwd ffmpegthumbnailer libnotify-bin gamemode bluetooth bluez-cups bluez-meshd rclone filelight fonts-ubuntu fastfetch btop
```

**Additional packages:**

[Brave](https://brave.com/linux/), [Signal-Desktop](https://signal.org/download/linux/), [NoiseTorch](https://github.com/noisetorch/NoiseTorch?tab=readme-ov-file), [Oversteer](https://github.com/berarma/oversteer), [Quickemu](https://github.com/quickemu-project/quickemu/releases/download/4.9.7/quickemu_4.9.7-1_all.deb), [VSCodium](https://github.com/VSCodium/vscodium/releases), [VSCode](https://code.visualstudio.com/docs/?dv=linux64_deb), [Warsaw](https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup64.deb), [OpenRGB](https://codeberg.org/OpenRGB/OpenRGB/releases/download/release_candidate_1.0rc2/openrgb_1.0rc2_amd64_trixie_0fca93e.deb), [Obsidian](https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/obsidian_1.6.7_amd64.deb), [Upscayl](https://github.com/upscayl/upscayl/releases/download/v2.11.5/upscayl-2.11.5-linux.deb), [Discord](https://discord.com/api/download?platform=linux&format=deb), [1Password](https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb), [LocalSend](https://github.com/localsend/localsend/releases/download/v1.15.4/LocalSend-1.15.4-linux-x86-64.deb), [ProtonVPN](https://protonvpn.com/support/official-linux-vpn-ubuntu/), [ProtonMail-Bridge](https://proton.me/mail/bridge), [ProtonPass](https://proton.me/support/set-up-proton-pass-linux),  [Spotify](https://www.spotify.com/br-en/download/linux/).

**Flatpaks:**

<li>Flatseal
<li>Blanket
<li>GDM Settings
<li>Parabolic

### Misc

If you have an EPSON printer, install the following:

1.  Install the driver
    ```bash
    sudo apt install printer-driver-escpr
    ```

2.  Enable and start CUPS service:
    ```bash
    sudo systemctl enable cups && sudo systemctl start cups
    ```

3.  Now it should be working. You can also check it at:
    ```bash
    http://localhost:631
    ```

***
### Recommended Guides:

[**Debian Post Install**](https://eloymelo.com/tutorials/debian/debian-post-install/)

[**Debian Firewall**](https://eloymelo.com/tutorials/debian/debian-firewall/)

[**Debian Better Fonts**](https://eloymelo.com/tutorials/debian/debian-better-fonts/)

[**Debian Broken QT Theme**](https://eloymelo.com/tutorials/debian/debian-broken-qt-theme/)