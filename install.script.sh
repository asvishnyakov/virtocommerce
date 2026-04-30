#!/bin/sh

# Load environment variables from .env file
if [ -f "../.env" ]; then
    # shellcheck disable=SC2046
    export $(grep -v '^#' ../.env | tr -d '\r' | xargs)
fi

# Use CURRENT_DEPLOYMENT environment variable, fallback to vc-deploy-dev if not set
DEPLOYMENT_NAME="${CURRENT_DEPLOYMENT:-vc-deploy-dev}"

vc-build install -PackageManifestPath "../${DEPLOYMENT_NAME}/backend/packages.json"
exec bash