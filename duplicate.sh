#!/bin/bash
clear
cat -n quotes.txt | sort -uk2 | sort -n | cut -f2- > temp.txt
mv temp.txt quotes.txt

