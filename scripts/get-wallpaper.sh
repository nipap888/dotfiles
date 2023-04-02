#!/bin/sh

urlpath=$( \
curl "https://www.bing.com/HPImageArchive.aspx?format=rss&idx=0&n=1&mkt=en-US" \
| xmllint --xpath "/rss/channel/item/link/text()" - \
| sed 's/1366x768/3440x1440/g' \
)
curl "https://www.bing.com$urlpath" \
| feh --bg-fill -
