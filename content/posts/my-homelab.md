---
title: "I have built my own Home Lab, and it's fantastic!"
date: 2025-12-15T12:40:27-03:00
draft: false
---

I recently have made [this post](https://eloymelo.com/posts/goodbye-windows/) talking about why I am ditching Windows and going full Linux. If you want to get a better context for what I am going to write here, you can check that out first.

Yes, that's right, I have build my very own home lab running Debian 13 Trixie, and it's a life changer. For starters, I have completely ditched services like ChatGPT, Proton Drive, Google Photos, Spotify, Netflix, Amazon Music and so on. Now I host all of that in my own server, well, not exactly the *same* services, but the open source free (as in freedom) alternatives.

The main ones are:
* ChatGPT -> [Ollama](https://github.com/ollama/ollama) and [Openwebui](https://github.com/open-webui/open-webui) 
* Spotify -> [Navidrome](https://www.navidrome.org/)
* Google Photos -> [Immich](https://immich.app/)
* Proton Drive -> [Nextcloud](https://github.com/nextcloud/all-in-one)
* Netflix -> [Jellyfin](https://github.com/jellyfin/jellyfin)
* Proton Pass -> [Bitwarden](https://bitwarden.com/) (not totally self hosted for now)

These are the most crucial services that I need in my daily life and they are all running in my own server. Also most of them are running as containers, so it makes my life way easier in terms of management since I use [Portainer](https://www.portainer.io/) as well. I almost forgot, I also have a DNS ads and tracker blocker for my network called [AdGuard Home](https://github.com/AdguardTeam/AdGuardHome).

My point is that by building my own home lab, I got the opportunity to learn new tools, discover new and great alternative software, and most of all, it set me free from the claws of big tech companies. I encourage everyone to look into building your own home server. It doesn't need to be something like mine, it could be just one service, something really simple. Another thing, you'll also have to plan your backup strategy if you're going to do this, but this is a topic for another post.

That's it, folks. Stay safe out there,

Eloy.