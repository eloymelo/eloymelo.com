---
title: "Cedilla Fix for US Keyboard Layout"
date: 2025-11-25T10:00:00-03:00
url: "/tutorials/miscellaneous/cedilla/"
tags: ["keyboard", "fix", "xorg"]
draft: false
---

Simple fix for those using a US keyboard layout who cannot type "ç".

1. Create a hidden file in your home directory called `.XCompose`:
```bash
nano .XCompose
```
2. Copy and paste the following:
```bash
include "%L"
<dead_acute> <c>     : "ç"
<dead_acute> <C>     : "Ç"
```
3. Log out and log back in.