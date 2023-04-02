# delay exec after i3 start
sleep 2 && { 
	vmware-user
	sleep 1
	~/repos/scripts/get-wallpaper.sh
	picom --backend xrender &
} &

xset r rate 300 40

# start i3
i3
