#!/bin/sh
gnome-terminal --title "Update" --working-directory "$PWD/VirtoCommerce.Platform" -- dotnet tool update VirtoCommerce.GlobalTool -g && vc-build update -edge --PackageManifestPath ../vc-deploy-dev/backend/packages.json