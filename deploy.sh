#!/bin/bash

rm -rf public/
git pull
hugo --theme=cocoa
