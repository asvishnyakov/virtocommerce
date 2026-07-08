#!/bin/sh
unset HISTFILE
set +o history
export ASPNETCORE_ENVIRONMENT=Development
dotnet run | lolcat
exec bash
