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

### 3. Create the following directory and the **fonts.conf** file:

```bash
mkdir -p ~/.config/fontconfig/
```
then
```bash
vim ~/.config/fontconfig/fonts.conf
```
now paste this setting:

```plaintext
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
<match target="font">
    <edit mode="assign" name="antialias">
        <bool>true</bool>
    </edit>
    <edit mode="assign" name="embeddedbitmap">
        <bool>false</bool>
    </edit>
    <edit mode="assign" name="hinting">
        <bool>true</bool>
    </edit>
    <edit mode="assign" name="hintstyle">
        <const>hintslight</const>
    </edit>
    <edit mode="assign" name="lcdfilter">
        <const>lcddefault</const>
    </edit>
    <edit mode="assign" name="rgba">
        <const>rgb</const>
    </edit>
</match>
</fontconfig>
```

### 3.1. Run this command to build font cache:
```bash
fc-cache -fv
```
### 3.2 Reboot your PC.
```bash
sudo reboot
```

### 4. Open GNOME Tweaks and set the following:

```plaintext 
Interface Text: Ubuntu
Document Text: Ubuntu
Monospace Text: MesloLGS NF (or any of the ttf-meslo-nerd)
    
Rendering (Hinting):
        
Slight

Antialiasing:

Subpixel (for LCD screens)
```
***
### 5. Optional (Highly Recommended)

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