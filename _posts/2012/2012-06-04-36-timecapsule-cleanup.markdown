---
author: gerolfziegenhain
comments: true
date: 2012-06-04 18:42:00+00:00
layout: post
link: https://gerolfziegenhain.wordpress.com/2012/06/04/36/
slug: '36'
title: Clean Up a Time Capsule Sparse Image
wordpress_id: 36
categories:
- Apple
- OSX
- Time Capsule
- Time Machine
- Workaround
tags:
- Apple
- OSX
- Time Capsule
- Time Machine
- Workaround
---

Consider you want to remove a bunch of old updates (i.e. of an old Mac) from your Time Capsule (TC). You could erase the whole disk, but usually this is not what you intend to do. Another alternative is to remove the plain sparse bundle containing the old backups. Removing sparse bundles - in particular for >1TB backups - from a TC can be a pain due to the time consumption. This is a result of the approach to split the backup in ~8MB sized directories. 

In the following I present s fast way to clean your TC.


#### Preparation:





	
  1. Mount your TC, become root and do to the folder.

	
  2. Find your XYZ.sparsebundle




#### Deletion (you may want to monitor the progress in a 2nd terminal using df -h):


cd ./XYZ.sparsebundle/bands  
  
for a in {0..9} {a..f}; do for b in {0..9} {a..f}; do for c in {0..9} {a..f}; do for d in {0..9} {a..f}; do echo $a$b$c$d && rm -drf $a$b$c$d ;done;done;done;done  
  
for a in {0..9} {a..f}; do for b in {0..9} {a..f}; do for c in {0..9} {a..f}; do echo $a$b$c && rm -drf $a$b$c ;done;done;done  
  
for a in {0..9} {a..f}; do for b in {0..9} {a..f}; do for c in {0..9} {a..f}; do for d in {0..9} {a..f}; do for e in {0..9} {a..f}; do echo $a$b$c$d$e && rm -drf $a$b$c$d$e ;done;done;done;done;done

