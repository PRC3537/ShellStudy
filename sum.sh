#!/bin/bash
ARGS=`getopt -o :a:b: -- "$@"`
if [ $? != 0 ] ; then echo "Terminating..." >&2 ; exit 1 ; fi
eval set -- "$ARGS"
while true;do
    case "$1" in
        -a)
            # min=
            echo "$OPTARG"
            shift;;
        -b) 
            # max=$OPTARG
            echo "$OPTARG"
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


function add(){
    sum=0
    for ((i=$min; i<$max; i++))
    do
        let "sum+=$i"
    done
    echo "sum=$sum"
   
}
add $1 $2;
    

