---
title: "Fedora Better Fonts"
date: 2025-11-28T17:57:51-03:00
url: "/tutorials/fedora/fedora-better-fonts/"
draft: false
---

### 1. Install Microsoft Fonts

```bash
sudo dnf install curl cabextract xorg-x11-font-utils fontconfig -y
```
And then:
```bash
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```

### 2. Enable COPR repository (CURRENTLY NOT WORKING FOR FEDORA 43)
```bash
sudo dnf copr enable chriscowleyunix/better_fonts -y
```
### Install these packages:
```bash
sudo dnf install fontconfig-font-replacements -y
```
### (Optional) Enable subpixel (rgb) antialiasing:
```bash
sudo dnf install fontconfig-enhanced-defaults -y
```

### 3. GNOME Tweaks
Make sure to set "Antialiasing" to "Subpixel (for LCD screens)" and "Rendering" to "Slight".

Basically:
```plaintext
Interface Text: Ubuntu
Document Text: Ubuntu
Monospace Text: MesloLGS NF
    
Rendering (Hinting):
        
Slight

Antialiasing:

Subpixel (for LCD screens)
```

***
## Optional

### 4. Create the following directory and the **fonts.conf** file:

```bash
mkdir -p ~/.config/fontconfig/
```
then:
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

### Run this command to build font cache:
```bash
fc-cache -fv
```
### 5. Reboot your PC.
```bash
sudo reboot
```
Source: https://copr.fedorainfracloud.org/coprs/chriscowleyunix/better_fonts/

***
### Recommended Guides:

[**Fedora Post Install**](https://eloymelo.com/tutorials/fedora/fedora-post-install/)

[**Fedora Apps**](https://eloymelo.com/tutorials/fedora/fedora-apps/)

[**Fedora Fixes**](https://eloymelo.com/tutorials/fedora/fedora-fixes/)