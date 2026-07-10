#!/bin/sh
unset HISTFILE
set +o history
docker compose up | lolcat
exec bash