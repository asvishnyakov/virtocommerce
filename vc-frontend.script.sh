#!/bin/sh
unset HISTFILE
set +o history
nvm use
yarn dev:expose | lolcat
exec bash