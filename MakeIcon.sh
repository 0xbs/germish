#!/bin/sh

mkdir -p Germish.iconset
sips -z 16 16 Germish.png --out Germish.iconset/icon_16x16.png
sips -z 32 32 Germish.png --out Germish.iconset/icon_16x16@2x.png
sips -z 32 32 Germish.png --out Germish.iconset/icon_32x32.png
sips -z 64 64 Germish.png --out Germish.iconset/icon_32x32@2x.png
iconutil -c icns Germish.iconset
