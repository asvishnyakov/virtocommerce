#!/bin/sh
dotnet user-secrets clear --project vc-platform/src/VirtoCommerce.Platform.Web
cat ./vc-platform.secrets.json | dotnet user-secrets set --project vc-platform/src/VirtoCommerce.Platform.Web
exec bash