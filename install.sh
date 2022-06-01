#!/bin/bash

set x

[ -d node_modules ] && { echo 'Already installed. Remove node_modules manually before running again'; exit 1; }

npm install
npm install --save-dev @babel/preset-env

cp -r node_modules.orig/@evinced-private node_modules

echo 'Installed!'

