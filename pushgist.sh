#!/bin/bash

OUT=build

./build.sh
jist $OUT/bookmark.js -u cfd44a7a72442bb734eb
jist $OUT/readlater.js -u 98d36e72c48d1795553a
jist $OUT/pinswift.js -u ff3d0c2e84def744a53d
