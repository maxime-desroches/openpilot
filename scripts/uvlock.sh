#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ROOT=$DIR/../
cd $ROOT

UPGRADE_FLAG=$([ -n "$UPGRADE" ] && echo "--upgrade" || : )
uv pip compile --preview --all-extras $UPGRADE_FLAG pyproject.toml -o requirements.txt
