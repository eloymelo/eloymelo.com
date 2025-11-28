---
title: "Fedora Better Fonts"
date: 2025-11-28T17:57:51-03:00
url: "/tutorials/fedora/fedora-better-fonts/"
draft: false
---

### 1. Enable COPR repository:
```bash
sudo dnf copr enable chriscowleyunix/better_fonts -y
```
### 2. Install packages:
```bash
sudo dnf install fontconfig-font-replacements -y
```
### 3. (Optional) Enable subpixel (rgb) antialiasing:
```bash
sudo dnf install fontconfig-enhanced-defaults -y
```

### 4. Create the following directory and the **fonts.conf** file:

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

### 5. Run this command to build font cache:
```bash
fc-cache -fv
```
### 6. Reboot your PC.
```bash
sudo reboot
```
Source: https://copr.fedorainfracloud.org/coprs/chriscowleyunix/better_fonts/

***
### Recommended Guides:

[**Fedora Post Install**](https://eloymelo.com/tutorials/fedora/fedora-post-install/)