#!/bin/sh
unset HISTFILE
set +o history
nvm use
yarn dev | lolcat
exec bash