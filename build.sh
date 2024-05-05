#!/usr/bin/bash
file=$(ls *.lyx | head -n1)
echo Found $file
lyx --export pdf5 $file
