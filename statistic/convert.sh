#!/bin/bash


for filename in Labs/lab*.md; do
  [ -e "$filename"] || continue
  pandoc --lua-filter=im.lua --to markdown | pandoc --top-level-division=chapter --to latex > latex/"$(basename "4filename" .txt)".tex"
