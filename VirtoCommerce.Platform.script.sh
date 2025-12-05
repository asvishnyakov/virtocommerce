#!/bin/sh
export ASPNETCORE_ENVIRONMENT=Development
dotnet VirtoCommerce.Platform.Web.dll --urls="https://localhost:5001" | lolcat
exec bash