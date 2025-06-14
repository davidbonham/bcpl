#!/usr/bin/env bash

usage()
{
    echo "usage: tbd"
}


TEMP=`getopt --name bcpl --options OScdmo:vk --longoptions optimise,source,compile,dryrun,map,object:,verbose,keep -- "$@"`
eval set -- "$TEMP"

# Path to installed run-time
export RTL=$BL_ROOT/rtl
export PATH=$BL_ROOT/bin:$PATH

clang_prefix=$RTL/bcplinit.s
clang_suffix="$RTL/blib.ll $RTL/bcplmain.c"
clang_inputs=""
optimise=-O0
source=""
compile=""
verbose=0
dryrun=0
object=""
object_path=""
map=0
keep=0
map_name=a.out.map

perform()
{
    cmd=$1
    if [ $verbose -eq 1 ] 
    then
        echo $cmd
    fi
    if [ $dryrun -eq 0 ]
    then
        eval $cmd
    else
        echo $cmd
    fi
}

# Process all of the options before any files

while true
do
    case "$1" in
        -O|--optimise)
            optimise=-O3
            shift
            ;;
        -S|--source)
            # source only means we aren't going to compile or link so remove bcplinit.s
            source="-S"
            clang_prefix=""
            clang_suffix=""
            shift
            ;;
        -c|--compile)
            # compiling means we aren't going to link so remove bcplinit.s
            compile="-c"
            clang_prefix=""
            clang_suffix=""
            shift
            ;;
        -d|--dryrun)
            dryrun=1
            shift
            ;;     
        -m|--map)
            map=1
            shift
            ;; 
        -o|--object)
            object="-o $2"
            map_name="$2.map"
            object_path=$2
            shift 2
            ;;
        -v|--verbose)
            verbose=1
            shift
            ;;
        -k|--keep)
            keep=1
            shift
            ;;
        --)
            shift
            break
            ;;
        *)
            echo unrecognised option: $1
            break
    esac
done

if [ $map -eq 1 ]
then
    map="-Wl,-Map=$map_name"
else
    map=""
fi

for input in $@
do
    entry=$(basename -- "$input")
    suffix="${entry##*.}"
    name="${entry%.*}"

    # Work out the sources, intermediates and destinations. 
    # If the user has specified --object, the destination directory is that
    # containing that file. If the user has not specified --keep, intermediates 
    # will be placed in /tmp otherwise they will be placed in the destination
    # directory
    srcdir=$(dirname $input)
    if [ "$object_path" = "" ]
    then
        # Destination is the same as the source
        dstdir=$srcdir
    else
        dstdir=$(dirname $object_path)
    fi

    if [ $keep -eq 0 ]
    then
        # Intermediate files are temporaries
        ll_path=$(mktemp /tmp/$name.XXXXXX.ll)
        s_path=$(mktemp /tmp/$name.XXXXXX.s)
    else
        ll_path=$dstdir/$name.ll
        s_path=$dstdir/$name.s
    fi

        # Destination

    case "$suffix" in

        b)
            echo bcpl $input to $object_path
            #perform "cintsys64 -c $BL_ROOT/bin/mybcpl t64 noselst $input to $ll_path"
            perform "$BL_ROOT/bin/bcpl t64  $input to $ll_path"
            perform "llc --relocation-model=pic $ll_path -o $s_path"
            clang_inputs="$clang_inputs $s_path"
            ;;
        c)
            echo clang $entry to $name.o
            clang_inputs="$clang_inputs $entry"
            ;;
        ll)
            echo llc $entry to $name.s
            perform "llc $name.ll -o $name.s"
            clang_inputs="$clang_inputs $name.s"
            ;;
        o)
            echo link $entry
            clang_inputs="$clang_inputs $entry"
            ;;
        s)
            echo clang $entry to $name.o
            clang_inputs="$clang_inputs $entry"
            ;;
        *)
            echo type of $entry not recognised
            ;;
    esac
done

perform "clang -no-pie -target x86_64-unknown-linux-gnu -Wl,-z,noexecstack $optimise -g3 $source $compile $clang_prefix $clang_inputs $clang_suffix $object $map"
if [ $keep -eq 0 ]
then
    perform "rm --force --verbose $ll_path $s_path $name.map"
fi



