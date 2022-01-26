#!/bin/bash

#ls -lt --time-style=+%d-%m-%y | awk -F' ' '{print $6"-"$7}'

abc=$(ls -ltdh *  --time-style=+%d-%m-%y | awk -F' ' '{print $5"-" $6"-"$7}')

xyz=$(echo $abc | awk -F' ' '{print $1}')

echo $xyz
