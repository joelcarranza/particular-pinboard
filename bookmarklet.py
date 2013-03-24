#!/usr/bin/python

# this just wraps minified javascript code in a function and prepends javascript:

import sys
text = sys.stdin.read()
sys.stdout.write("javascript:%s" % text)