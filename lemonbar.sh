#!/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r")

        echo -n "$DATETIME"
}

# Define function that prints linux version to the screen
Kernel() {
         LINUX=$(uname -r)

     
         echo -n "$LINUX"
}
# Print the clock

while true; do
	echo "%{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}  %{r} $(Kernel)"
        sleep 1
done
