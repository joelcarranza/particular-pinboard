#!/bin/bash

SRC=pinboard-particular.js
OUT=build
MINIFY="uglifyjs -mt"
BOOKMARKLET="python bookmarklet.py"

# do stuff
mkdir $OUT
cat $SRC | $MINIFY | $BOOKMARKLET > $OUT/bookmark.js
sed 's/readlater = false/readlater = true/' $SRC | $MINIFY | $BOOKMARKLET > $OUT/readlater.js
sed 's/customUrl = null/customUrl = "pinbook:\/\/\/add?"/' $SRC | $MINIFY | $BOOKMARKLET > $OUT/pinbook.js