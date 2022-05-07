---
author: gerolfziegenhain
comments: true
date: 2013-04-13 16:13:00+00:00
layout: post
slug: raspi-as-wspr-transmitter
title: Raspi As WSPR Transmitter
categories: [Ham Radio, QRP, Raspi]
tags: [Ham Radio, QRP]

---

Recently the [Raspberry Pi (Raspi)](http://www.raspberrypi.org/) has gained much interest in the Ham Radio community. One interesting things is: the I/O pins provide access to a clock signal (GPCLK0) and it is possible to modulate this clock signal via software. This has motivated Guido Ten Dolle (PE1NZZ) to implement a [WSPR](http://wsprnet.org/drupal/) transmitter and to publish the sources under GPL. Within the last days I have made some minor modifications to the [WsprryPi](https://github.com/8cH9azbsFifZ/WsprryPi) sources, built a [30m QRP filter](http://www.gqrp.com/harmonic_filters.pdf) using the ugly method and connected everything to my [doublet antenna](http://www.norcalqrp.org/files/NorCalDoubletAntenna.pdf).

![Raspi as WSPR Transmitter](IMG_1521.JPG)

Immediately my 10mW have been received in 743km distance by G6HUI ([WSPR Spots](http://wsprnet.org/drupal/wsprnet/spots)) and within two weeks I was received in a distance of 7869km. Not too bad with about 10mW:

|Timestamp	|Call	|MHz	|SNR	|Drift	|Grid	|Pwr	|Reporter	|RGrid	|km	|az|
|-----------|-------|-------|-------|-------|-------|-------|-----------|-------|---|--|
|2013-04-13 |15:30	|DG6FL	| 10.140199	 |-16	 |-1	 |JO40cb	| 0.01	| G6HUI	| IO81wl	| 743	| 286|
|2013-04-22 |05:02	 |DG6FL	|10.140238	 |-21	| 1	 |JO40cb	 |0.01	 |W4AC	 |EL86	| 7869	| 289|

![7869km with 10mW](wspr_dg6fl_us.png)

Information on how to do this yourself can be found in the [WsprryPi](https://github.com/8cH9azbsFifZ/WsprryPi) repository.

