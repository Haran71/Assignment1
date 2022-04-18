#!/bin/bash
clear
awk NF quotes.txt > temp.txt
mv temp.txt quotes.txt
