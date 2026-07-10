#!/bin/sh
unset HISTFILE
set +o history

# Load environment variables from .env file
if [ -f ".env" ]; then
    export $(grep -v '^#' .env | xargs)
fi

# Use CURRENT_DEPLOYMENT environment variable, fallback to vc-deploy-dev if not set
DEPLOYMENT_NAME="${CURRENT_DEPLOYMENT:-vc-deploy-dev}"

dotnet tool update VirtoCommerce.GlobalTool -g && vc-build update -edge --PackageManifestPath "../${DEPLOYMENT_NAME}/backend/packages.json"
exec bash