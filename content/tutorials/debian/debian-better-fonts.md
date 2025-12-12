---
title: "Debian Better Fonts"
date: 2025-11-26T01:45:18-03:00
url: "/tutorials/debian/debian-better-fonts/"
draft: false
---

### 1. **Install the Microsoft Fonts using this command:**
```bash
sudo apt install ttf-mscorefonts-installer -y
```

### 2. Create the following directory and the **fonts.conf** file:

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

### 3. Run these commmands:
```bash
# Reconfigure fontconfig
sudo dpkg-reconfigure fontconfig-config

# Regenerate fonts cache
sudo dpkg-reconfigure fontconfig
```
Or just run
```bash
sudo fc-cache -fv
```

### 4. Reboot your PC.
```bash
sudo reboot
```

### 5. Open GNOME Tweaks and set the following:

```plaintext 
Interface Text: Ubuntu
Document Text: Ubuntu
Monospace Text: MesloLGS NF (or any of the ttf-meslo-nerd)
    
Rendering (Hinting):
        
Slight

Antialiasing:

Subpixel (for LCD screens)
```
### 6. Optional (Highly Recommended)

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
***
### Recommended Guides:

[**Debian Post Install**](https://eloymelo.com/tutorials/debian/debian-post-install/)

[**Debian Apps**](https://eloymelo.com/tutorials/debian/debian-apps/)

[**Debian Firewall**](https://eloymelo.com/tutorials/debian/debian-firewall/)

[**Debian Broken QT Theme**](https://eloymelo.com/tutorials/debian/debian-broken-qt-theme/)