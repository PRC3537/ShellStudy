#!/bin/bash
ARGS=`getopt -o :a:b:c: -- "$@"`
if [ $? != 0 ] ; then echo "Terminating..." >&2 ; exit 1 ; fi
eval set -- "$ARGS"
while true;do
    case "$1" in
        -a)
            echo "$OPTARG"
            shift;;
        -b) 
            echo "b"
            shift;;
        -c) 
            echo "c"
            shift;;
        --)
            echo "--"
            shift
            break
            ;;
        *) 
            echo "??"
            shift
            ;;
    esac
done