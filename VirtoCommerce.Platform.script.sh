#!/bin/sh
export ASPNETCORE_ENVIRONMENT=Development
dotnet VirtoCommerce.Platform.Web.dll --urls="http://localhost:5000;http://192.168.176.84:5000;https://localhost:5001;https://192.168.176.84:5001" | lolcat
exec bash