#!/usr/bin/env bash

# Install additional PHP extensions for MAMP.
if ! [[ -L "/Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/xhprof.so" && -f "/Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/xhprof.so" ]]; then
  cp /usr/local/Cellar/php53-xhprof/254eb24/xhprof.so /Applications/MAMP/bin/php/php5.3.29/lib/php/extensions/no-debug-non-zts-20090626/
fi
