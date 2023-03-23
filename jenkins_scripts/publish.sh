#!/usr/bin/env sh

echo $NODE_NAME
echo $PIPELINE_NODE
echo $NODE_LABELS
echo $RESERVE
echo $PWD
set -ex
echo "$BRANCH_NAME"

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
export PATH="/root/.local/bin:$PATH"

poetry add -f requirements.txt
poetry install --no-root

