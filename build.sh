#!/bin/bash

SRC=pinboard-particular.js
OUT=build
MINIFY="uglifyjs -mt"
BOOKMARKLET="python bookmarklet.py"

if [ ! -d $OUT ]; then
mkdir $OUT
fi

cat $SRC | $MINIFY | $BOOKMARKLET > $OUT/bookmark.js
sed 's/readlater = false/readlater = true/' $SRC | $MINIFY | $BOOKMARKLET > $OUT/readlater.js
sed 's/appUrl = null/appUrl = "pinbook:\/\/x-callback-url\/add?"/' $SRC | $MINIFY | $BOOKMARKLET > $OUT/pinbook.js
