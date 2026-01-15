#!/bin/sh

# Load environment variables from .env file
if [ -f ".env" ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Use CURRENT_DEPLOYMENT environment variable, fallback to vc-deploy-dev if not set
DEPLOYMENT_NAME="${CURRENT_DEPLOYMENT:-vc-deploy-dev}"

gnome-terminal --title "Update" --working-directory "$PWD/VirtoCommerce.Platform" -- bash -i -c "dotnet tool update VirtoCommerce.GlobalTool -g && vc-build update -edge --PackageManifestPath ../${DEPLOYMENT_NAME}/backend/packages.json"