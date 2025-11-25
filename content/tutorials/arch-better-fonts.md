---
title: "Arch Better Fonts"
date: 2025-11-25T09:56:15-03:00
url: "/tutorials/arch-better-fonts/"
draft: false
---

### 1.  Install the Microsoft Fonts.
```bash
yay -S ttf-ms-fonts 
yay -S ttf-ms-win11-auto
yay -S ttf-ms-win10-auto
```
Choose one, here I recommend "ttf-ms-fonts".

```bash
yay -S ttf-ms-fonts
```

### 2. Install a better text font.

For my use case, I always install Ubuntu fonts.
```bash
sudo pacman -S ttf-ubuntu-font-family
```

### 2.1 Open GNOME Tweaks and set the following:

```plaintext 
Interface Text: Ubuntu
Document Text: Ubuntu
Monospace Text: MesloLGS NF (or any of the ttf-meslo-nerd)
    
Rendering (Hinting):
        
Slight

Antialiasing:

Subpixel (for LCD screens)
```

### 3. Optional (Highly Recommended)

Using the FREETYPE_PROPERTIES option for bolder fonts (less pixelated, more like Windows TrueType):

1. Enter the following command in the terminal:
    ```bash
    sudo vim /etc/environment
    ```
2. Copy and paste the following:
    ```plaintext
    # Better font rendering
    FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"
    ```
3. Save the changes and reboot the machine

### Quick Note
I highly recommend you check out the **[Arch Post Install](https://eloymelo.com/tutorials/arch-post-install/)** guide first If you haven't yet.