#!/bin/sh

bundle exec jekyll build
rm _site/run.sh
scp -r _site www:/var/www/blog
