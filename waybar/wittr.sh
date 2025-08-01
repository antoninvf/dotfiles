#!/bin/sh

for i in {1..5}
do
    text=$(curl -s "https://wttr.in/Praha%204?format=1")
    if [ $? -eq 0 ]
    then
        text=$(echo "$text" | awk '{print $2}')
        tooltip=$(curl -s "https://wttr.in/Praha%204?format=4")
        if [ $? -eq 0 ]
        then
            tooltip=$(echo "$tooltip" | sed -E "s/\s+/ /g")
            echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
            exit
        fi
    fi
    sleep 2
done
echo "{\"text\":\"error\", \"tooltip\":\"error\"}"
