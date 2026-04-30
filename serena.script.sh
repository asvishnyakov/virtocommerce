#!/bin/sh
unset HISTFILE
set +o history
PORT=""
while [ $# -gt 0 ]; do
    case "$1" in
        --port)   PORT="$2"; shift 2 ;;
        --port=*) PORT="${1#--port=}"; shift ;;
        *)        echo "unknown argument: $1" >&2; exit 2 ;;
    esac
done
: "${PORT:?usage: $0 --port <port>}"
uvx --from git+https://github.com/oraios/serena serena start-mcp-server --context=claude-code --project-from-cwd --enable-web-dashboard true --open-web-dashboard false --transport streamable-http --port "$PORT"
exec bash