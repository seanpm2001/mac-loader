#!/bin/bash
set -e

SRC="src/bin/Release/net6.0-macos/osx-x64/uno-app-loader.app"
DST="x64"

dotnet build --configuration Release uno-mac.sln

rm -rf $DST
mkdir -p $DST

cp -R $SRC $DST
du -h $DST