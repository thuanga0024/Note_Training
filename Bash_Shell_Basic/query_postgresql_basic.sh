#!/bin/bash

tenbang=$1

psql -c "SELECT * FROM $1;"