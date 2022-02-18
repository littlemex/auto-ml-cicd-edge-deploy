#!/bin/bash

CDKVER="1.134.0"
PREFIX="akazawt"

npm install --force -g aws-cdk@$CDKVER

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cdk bootstrap
cdk deploy -c prefix=$PREFIX --require-approval never