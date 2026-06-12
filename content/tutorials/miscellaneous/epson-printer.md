---
title: "Setting up an EPSON Printer"
date: 2025-06-12T10:00:00-03:00
url: "/tutorials/miscellaneous/epson-printer/"
draft: false
---

## 1. Install the required driver for your distro

**Debian:**
```bash
sudo apt install printer-driver-escpr
```

**Fedora:**
```bash
sudo dnf install epson-inkjet-printer-escpr
```

**Arch:**
```bash
yay -S epson-inkjet-printer-escpr
```

## 2. Enable and start the CUPS service

```bash
sudo systemctl enable cups && sudo systemctl start cups
```

## 3. Add the printer via CUPS web interface

Go to `http://localhost:631`, then navigate to **Administration > Add Printer**, select the printer on your network and follow the prompts. When choosing the driver model, pick the closest match — for the L355, the L405 or L455 works well.