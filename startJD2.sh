#!/bin/sh

function stopJD2 {
	PID=$(cat JDownloader.pid)
	kill $PID
	wait $PID
	exit
}

trap stopJD2 EXIT

java -Djava.awt.headless=true -jar /opt/JDownloader/JDownloader.jar &

while true; do
	sleep inf
done

