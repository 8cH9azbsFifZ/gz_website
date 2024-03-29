---
author: gerolfziegenhain
date: 2022-04-17 21:02:10+00:00
layout: post
title: WSPR in Docker
categories: [HamRadio, Docker, WSPR]
tags: [HamRadio, Docker, WSPR]
---

For receiving WSPR I use a [FiFi SDR](https://www.box73.de/product_info.php?products_id=3081) with a
simple loop antenna.
The WSPR software is running with in a docker container with HTML5 VNC support: 
[docker-wsjtx](https://github.com/8cH9azbsFifZ/docker-wsjtx).

![Example: Running WSJTX in Docker with HTML5](screenshot.png)

See the current spots [here](http://wsprnet.org/olddb?mode=html&band=all&limit=50&findcall=&findreporter=DG6FL&sort=date).
