#!/bin/sh

fswatch ./lib | while read; do (cd ./spec/dummy && rails restart); done
