#!/usr/bin/env bash
cd pxt-lets-steam
npm install

rm -R node_modules/pxt-core
rm -R node_modules/pxt-common-packages

pxt link ../pxt
pxt link ../pxt-common-packages
cd