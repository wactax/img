#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

cd $DIR

if [ ! -d "node_modules" ]; then
  pnpm i
fi

zip() {
  bunx svgo --config $DIR/svgo.config.cjs -r -f $1 -o $1
}

zip $DIR
