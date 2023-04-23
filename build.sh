#!/bin/bash

rm -rf dist

npm run build

cd dist

zip -r build.zip . \
    -x .git/**\* \
    -x .idea/**\* \
    -x \*.zip

mv build.zip ..

cd ..

rm -rf dist
