#!/usr/bin/env bash

while getopts ":a:" opt; do
  case $opt in
    a)
      echo "-a was triggered! option: $OPTARG" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done