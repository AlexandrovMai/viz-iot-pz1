#!/bin/bash

bx=100
by=100

while : ; do
    if (( $RANDOM%2 )) ; then
      (( bx -= 1 ))
    else
      (( bx +=1 ))
    fi

    if (( $RANDOM%2 )) ; then
      (( yn=-1 ))
    else
      (( yn=1 ))
    fi

    (( bx += xn ))
    (( by += yn ))

    echo "{\"x\":$bx,\"y\":$by}"
    mosquitto_pub -h 'mqtt' -t "point" -m "{\"x\":$bx,\"y\":$by}"
    sleep 1
done