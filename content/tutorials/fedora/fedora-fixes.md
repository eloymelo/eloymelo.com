---
title: "Fedora Fixes"
date: 2025-12-12T16:33:34-03:00
url: "/tutorials/fedora/fedora-fixes/"
draft: false
---

### 1. Flatpaks missing dark GTK theme
```bash
flatpak install org.gtk.Gtk3theme.Adwaita-dark
```

Also see [this article](https://www.linuxuprising.com/2018/05/how-to-get-flatpak-apps-to-use-correct.html) about it.


### 2. Virtual Manager (KVM) ethernet not working

1. Open this file and add the following at the end right under #firewall_backend = "nftables".
```bash
firewall_backend  = "iptables"
```

2. Restart the libvirtd service.

```bash
sudo systemctl restart libvirtd
```

3. Now it should work after restarting the VM.

[Source](https://www.reddit.com/r/Fedora/comments/1ggvck8/fedora_41_connectivity_issues_with_virtual/)

### 3. NVIDIA drivers

If you have a NVIDIA card, I suggest you follow the steps covered in [this tutorial](https://github.com/Comprehensive-Wall28/Nvidia-Fedora-Guide) created by [Fady Osama](https://github.com/Comprehensive-Wall28).

Or you can follow the oficial documentation at [HowtoNVIDIA](https://rpmfusion.org/Howto/NVIDIA).