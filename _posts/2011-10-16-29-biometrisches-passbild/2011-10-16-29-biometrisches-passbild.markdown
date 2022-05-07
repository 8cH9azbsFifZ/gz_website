---
author: gerolfziegenhain
comments: true
date: 2011-10-16 18:49:00+00:00
layout: post
link: https://gerolfziegenhain.wordpress.com/2011/10/16/29/
slug: '29'
title: Biometrisches Paßphoto mit GIMP selbst erstellen und im Supermarkt drucken
  leicht gemacht
wordpress_id: 29
categories:
- Linux
- OSX
tags:
- Linux
- OSX
---

Zunächst muß das Paßphoto den biometrischen Richtlinien (1) entsprechen. Diese können mittels der beigefügten Schablone und GIMP leicht erfüllt werden. Dann kann das Paßphoto in im Supermarkt gängige Sofortdruckformate (9x13, 10x15, 11x17, 13x18, 20x30) umgewandelt werden.  
  
1. Angefügtes Bild in GIMP öffnen.  
2. Gewünschtes Paßphoto als neue Ebene öffnen.  
3. Paßphoto-Ebene so skalieren und verschieben, daß Gesicht in die Maske passt.  
4. Schablonen-Ebene unsichtbar machen und Paßphoto exportieren (Name muss sein: passphoto.png).  
5. Beigefügtes Perl Skript speichern, ausführbar machen und loslassen. NB: ImageMagick muß installiert sein.  
6. Die erzeugten Bilder im Supermarkt ausdrucken.  
  
########### Beginn: Perl Skript ###########  
  
#!/usr/bin/perl  
my $passphoto = "passphoto.png";   
  
my $basename = $passphoto;  
$basename =~ s/.png//;  
  
my %format =  
(   
"9x13" => { "width" => 1535, "height" => 1053, "nrow" => 2, "ncol" => 3},  
"10x15" => { "height" => 1181, "width" => 1772, "nrow" => 2, "ncol" => 4},  
"11x17" => { "height" => 1299, "width" => 2008, "nrow" => 2, "ncol" => 4},  
"13x18" => { "height" => 1535, "width" => 2126, "nrow" => 2, "ncol" => 5},  
"20x30" => { "height" => 2362, "width" => 3543, "nrow" => 4, "ncol" => 8},  
);  
for my $f (keys %format)  
{  
print "Make photos for $f\n";  
my $img = $basename."_".$f.".jpg"; my $cmd = "montage -background red -geometry 414x532+2+2 -tile ";  
$img = $img.$format{$f}{"ncol"}."x".$format{$f}{"nrow"};  
$cmd = $cmd." ".$passphoto foreach (0..$format{$f}{"ncol"}*$format{$f}{"nrow"});  
$cmd = $cmd." png:- | convert -resize ".$format{$f}{"width"}."x".$format{$f}{"height"}.'\>';   
$cmd = $cmd." -size ";  
$cmd = $cmd.$format{$f}{"width"}."x".$format{$f}{"height"}." xc:red png:- -gravity ";  
$cmd = $cmd." center -composite ".$img;  
`$cmd`;  
}  
########### Ende: Perl Skript ###########  
  
  
(1) Biometrische Richtlinien für Paßphotos:[http://www.bundesdruckerei.de/de/service/service_buerger/buerger_persdok/persdok_epassMstr.html](http://www.bundesdruckerei.de/de/service/service_buerger/buerger_persdok/persdok_epassMstr.html)


![](vorlage.png)



