#!/bin/bash

OUT=build

./build.sh
jist $OUT/bookmark.js -u e945f9be615aa7e92931
jist $OUT/readlater.js -u dfba062c093b3e110b08
jist $OUT/pinbook.js -u 9a4071cb313b41019bd0
