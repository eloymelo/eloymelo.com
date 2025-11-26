---
title: "Arch Firewall"
date: 2025-11-25T10:15:53-03:00
url: "/tutorials/arch-firewall/"
draft: false
---

### Setting up Uncomplicated Firewall (UFW)

1. You can install it using your package manager.

    ```bash
    sudo pacman -S ufw
    ```
2. Now use these recommended rules:

    ```bash
    sudo ufw limit 22/tcp
    sudo ufw allow 80/tcp
    sudo ufw allow 443/tcp
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    sudo ufw enable
    ```

3. If you are using the application LocalSend, also run this:

    ```bash
    sudo ufw allow 53317
    ```
This will allow localsend to work properly with the ufw rules above.

4. If you are using KDEConnect:

    ```bash
    sudo ufw allow 1714:1764/tcp
    sudo ufw allow 1714:1764/udp
    ```

5. If you want a GUI for the UFW, install the following:
    ```bash
    sudo pacman -S gufw
    ```
5. Done.

### Quick Note
I highly recommend you check out the **[Arch Post Install](https://eloymelo.com/tutorials/arch-post-install/)** guide first If you haven't yet.