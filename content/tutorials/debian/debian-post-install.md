---
title: "Debian Post Install"
date: 2025-04-09T00:05:35-03:00
url: "/tutorials/debian/debian-post-install/"
draft: false
---

1. **Enable contrib and non-free sources**

    Using the terminal, edit the following file, add the "contrib" and "non-free" sources, or replace with these lines:

    ```plaintext
    sudo vim /etc/apt/sources.list
    ```

    ```plaintext
    deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
    deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

    deb http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware
    deb-src http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware

    deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
    deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
    ```

2. **Enable bookworm backports (it works for Trixie as well)**

    Again, using the terminal, edit the file **/etc/apt/sources.list** and add the following lines:

    ```plaintext
    # bookworm-backports
    deb http://deb.debian.org/debian bookworm-backports main contrib non-free
    deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free
    ```

3. **Update the package manager**

    ```bash
    sudo apt update
    ```

4. **Enable 32bit packages**

    ```bash
    sudo dpkg --add-architecture i386 && sudo apt update
    ```

5. **Enable Flatpak support**

    ```bash
    sudo apt install flatpak
    ```
    ```bash
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    ```
    ```bash
    sudo apt install gnome-software-plugin-flatpak
    ```

6. **Install and configure Virtual Manager**

    ```bash
    sudo apt install qemu-system libvirt-daemon-system virt-manager
    ```

    Using `vim` (or any other text editor), open `libvirtd.conf` and enable these two lines:

    ```bash
    sudo vim /etc/libvirt/libvirtd.conf
    ```

    ```plaintext
    unix_sock_group = "libvirt"
    unix_sock_rw_perms = "0770"
    ```

    Start and enable the libvirtd service:

    ```bash
    sudo systemctl enable libvirtd && sudo systemctl start libvirtd
    ```

    Add your user to the libvirt group by typing this command:

    ```bash
    sudo usermod -a -G libvirt $(whoami)
    ```

    Start the default network and enable autostart:

    ```bash
    sudo virsh net-start default && sudo virsh net-autostart --network default
    ```

7. **Fix slow shutdown**

    Edit `system.conf` and change the default value from 90s to 15s (or 10s):

    ```bash
    sudo vim /etc/systemd/system.conf
    ```
    ```plaintext
    DefaultTimeoutStopSec=15s
     ```

8. **Remove all pre-installed GNOME games**

    Run:

    ```bash
    sudo apt purge iagno lightsoff four-in-a-row gnome-robots pegsolitaire gnome-2048 hitori gnome-klotski gnome-mines gnome-mahjongg gnome-sudoku quadrapassel swell-foop gnome-tetravex gnome-taquin aisleriot gnome-chess five-or-more gnome-nibbles tali
    sudo apt autoremove
    ```

    Or just run:

    ```bash
    sudo apt purge gnome-games
    ```

9. **Fix broken QT application theme**

    Follow the steps covered under the [Fix Broken QT Theme](https://eloymelo.com/tutorials/debian/debian-broken-qt-theme/) guide.

10. **Font configuration**
    
    Follow the steps by clicking **[here.](https://eloymelo.com/tutorials/debian-better-fonts/)**

11. **Set up firewall**

    Click [here](https://github.com/eloymelo/linux-documentation/blob/main/Firewall/firewall-settings.md) and follow the steps.

***
### Recommended Guides:

[**Debian Apps**](https://eloymelo.com/tutorials/debian/debian-apps/)

[**Debian Better Fonts**](https://eloymelo.com/tutorials/debian/debian-better-fonts/)