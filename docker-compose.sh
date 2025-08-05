#!/bin/sh
gnome-terminal --title "Docker" --working-directory "$PWD" -- bash -i ./docker-compose.script.sh