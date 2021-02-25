#!/bin/sh

hugo
git add -A
git commit -m "rebuilding site $(date)"
git push -u origin master