#/bin/sh

script=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
lineage="`echo $script | rev | cut -f5 -d'/' | rev`"
device="`echo $script | rev | cut -f4 -d'/' | rev`"
brand="`echo $script | rev | cut -f3 -d'/' | rev`"
model="`echo $script | rev | cut -f2 -d'/' | rev`"
patch="`echo $script | rev | cut -f1 -d'/' | rev`"
test="`echo ${PWD} | rev | cut -f1 -d'/' | rev`"
# ---------------------------------

UPDATE_PACKAGE=update.zip

if [[ "$device" == "device" ]]; then
    if [ "x$UPDATE_PACKAGE" = "x" ]; then
        echo You must specify the update.zip as first argument
        exit
    fi

    BASE=$lineage/proprietary
    rm -rf $BASE/*

    for FILE in `egrep -v '(^#|^$)' proprietary-blobs.txt`; do
        DIR=`dirname $FILE`
        if [ ! -d $BASE/$DIR ]; then
            mkdir -p $BASE/$DIR
        fi
        unzip -j -o ${UPDATE_PACKAGE} system/$FILE -d $BASE/$DIR
    done
fi

./setup-makefiles.sh
