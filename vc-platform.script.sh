#!/bin/sh
export ASPNETCORE_ENVIRONMENT=Development
dotnet run | lolcat
exec bash
