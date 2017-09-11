#!/bin/bash

cd "$(dirname "$0")"

cd ..
if [ ! -d "public" ]; then
  mkdir public
else
  rm -rf public/*
fi

cp deploy/index.html public/

for name in {"home","tutos","tc_poo"}; do
  echo "CREATE SUBSITE FOR:" $name
  cd $name/$name
  hugo
  cd ../../public
  mkdir $name
  cp -R ../$name/$name/public/* $name/
  rm -rf ../$name/$name/public/*
  cd ..
done

