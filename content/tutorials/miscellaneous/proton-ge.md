---
title: "ProtonGE Setup"
date: 2025-06-12T10:00:00-03:00
url: "/tutorials/miscellaneous/proton-ge/"
draft: false
---

[ProtonGE](https://github.com/GloriousEggroll/proton-ge-custom) is a custom version of Proton with additional patches and fixes for better game compatibility on Linux.

1. Go to the [ProtonGE GitHub page](https://github.com/GloriousEggroll/proton-ge-custom) and download the latest release.

2. Create the `compatibilitytools.d` directory if it does not exist:
```bash
mkdir -p ~/.steam/root/compatibilitytools.d
```

3. Extract the downloaded file to the directory:
```bash
tar -xf GE-ProtonVERSION.tar.gz -C ~/.steam/root/compatibilitytools.d/
```

4. Restart Steam and select ProtonGE in the compatibility settings of any game.