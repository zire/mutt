#!/usr/bin/env bash

while true; do
	offlineimap 2>&1 > ~/.mutt/offlineimap.log
	sleep 120 		# sleep 2 minutes
done & 					# run loop in background
LOOP_PID=$! 		# copy PID of loop
mutt						# run mutt in foreground (and waits for mutt to exit)

kill $LOOP_PID
wait $LOOP_PID 2>/dev/null

bash ~/.mutt/mail-sync.sh & 	# sync mail once more after mutt exists
exit 0 												# force script to exit "cleanly"
