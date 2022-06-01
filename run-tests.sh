#!/bin/bash

[ -d node_modules ] || { echo 'Run ./install first'; exit 1; }

npx wdio

