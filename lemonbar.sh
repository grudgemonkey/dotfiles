#!/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r")

        echo -n "$DATETIME"
}

# Print the clock

while true; do
        echo "%{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}"
        sleep 1
done
