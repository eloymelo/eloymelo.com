---
title: "Debian Broken QT Theme"
date: 2025-11-26T01:58:00-03:00
url: "/tutorials/debian/debian-broken-qt-theme"
draft: false
---

### 1. Open terminal and type the following
```bash
sudo apt install qgnomeplatform-qt5
```

### 2. Edit **`/etc/environment`** and paste the following:

```bash
sudo vim /etc/environment
```

```plaintext
# fix for broken QT themes
QT_QPA_PLATFORM=xcb
```
### 3. Log out of the session or restart the machine.
```bash
sudo reboot
```
***
### Recommended Guides:

[**Debian Post Install**](https://eloymelo.com/tutorials/debian/debian-post-install/)

[**Debian Apps**](https://eloymelo.com/tutorials/debian/debian-apps/)

[**Debian Firewall**](https://eloymelo.com/tutorials/debian/debian-firewall/)

[**Debian Better Fonts**](https://eloymelo.com/tutorials/debian/debian-better-fonts/)