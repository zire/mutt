#!/usr/bin/env bash

# The script waits for any running offlineimap instances to exit, and then calls offlineimap to ensure there ain't multiple running instances, which offlinemaip doesn't like.

while pkill 0 offlineimap; do
	sleep 2
done
offlineimap > ~/.mutt/offlineimap.log 2>&1 &
