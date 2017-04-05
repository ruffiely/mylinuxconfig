#!/bin/bash
ORIGIN=$(pwd)
NAME=$1
cd ~/libgdx;java -cp gdx.jar:extensions/gdx-tools/gdx-tools.jar com.badlogic.gdx.tools.texturepacker.TexturePacker $ORIGIN $ORIGIN/packed $NAME;cd $ORIGIN
