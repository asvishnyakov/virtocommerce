#!/bin/sh
unset HISTFILE
set +o history
export ASPNETCORE_ENVIRONMENT=Development
dotnet VirtoCommerce.Platform.Web.dll --urls="https://localhost:5101" | lolcat
exec bash