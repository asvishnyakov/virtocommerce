#!/bin/sh
nvm use
yarn dev:expose | lolcat
exec bash