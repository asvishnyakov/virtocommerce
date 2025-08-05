#!/bin/sh
nvm use --lts
yarn dev:expose | lolcat
exec bash