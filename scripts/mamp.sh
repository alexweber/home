#!/usr/bin/env bash

# Copy additional PHP extensions for MAMP.

# XHProf
if ! [[ -L "/Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/xhprof.so" && -f "/Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/xhprof.so" ]]; then
  cp /usr/local/Cellar/php53-xhprof/254eb24/xhprof.so /Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/
fi

# JSMin
if ! [[ -L "/usr/local/Cellar/php53-jsmin/1.1.0/jsmin.so" && -f "/usr/local/Cellar/php53-jsmin/1.1.0/jsmin.so" ]]; then
  cp /usr/local/Cellar/php53-jsmin/1.1.0/jsmin.so /Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/
fi
