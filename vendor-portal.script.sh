#!/bin/sh
unset HISTFILE
set +o history
nvm use
yarn serve | lolcat
exec bash