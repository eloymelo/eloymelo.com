---
title: "QT Broken Theme"
date: 2025-11-25T10:00:00-03:00
url: "/tutorials/gnome/gnome-fix-qtapps/"
tags: ["gnome", "qt", "fix", "theme"]
draft: false
---

First install the adw-gtk3 package.

| | |
|:--|:--|
| Fedora |`dnf install adw-gtk3-theme` |
| Arch | `pacman -S adw-gtk-theme` |
| Debian | [3rd party repo](https://gitlab.com/julianfairfax/package-repo#how-to-add-repository-for-debian-based-linux-distributions) |

Then open your terminal and make the following changes to the **environment** file.

```bash
sudo nano /etc/environment
```
QT_QPA_PLATFORM=xcb

QT_STYLE_OVERRIDE=adw-gtk3-theme

### Optional

GSK_RENDERER=ngl

FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"