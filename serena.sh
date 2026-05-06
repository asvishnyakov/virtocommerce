#!/bin/sh
gnome-terminal --title "VirtoOZ Serena MCP" --working-directory "$PWD/virto-oz" -- bash -i ../serena.script.sh --port 9121
gnome-terminal --title "AI module Serena MCP" --working-directory "$PWD/modules/vc-module-ai" -- bash -i ../../serena.script.sh --port 9131
gnome-terminal --title "VirtoOZ Management module Serena MCP" --working-directory "$PWD/modules/vc-module-virtooz-management" -- bash -i ../../serena.script.sh --port 9132