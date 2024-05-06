#!/usr/bin/bash
echo Working at $(pwd)
echo ---
ls
echo ---
file=$(ls *.lyx | head -n1)
echo Found $file
lyx --export pdf5 $file
