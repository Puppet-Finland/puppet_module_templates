#!/bin/sh
#
# newmodule.sh
#
# This script is used to create new Puppet modules from standardized module 
# templates.

usage() {
    echo "USAGE"
    echo
    echo "    newmodule.sh <template directory> <modulename>"
    echo ""
    echo "EXAMPLES"
    echo ""
    echo "    ./newmodule.sh installonly zsh"
    echo "    ./newmodule.sh monitonly zookeeper"
}


TEMPLATEDIR=$1
MODULENAME=$2

# Sanity checks

if [ "${TEMPLATEDIR}" = '' ] || [ "${MODULENAME}" = '' ]; then
    usage
    exit 1
fi

if ! [ -r "${TEMPLATEDIR}" ]; then
    echo "ERROR: Template directory ${TEMPLATEDIR} does not exist!"
    exit 1
fi

MODULEDIR="../${MODULENAME}"

if [ -d "${MODULEDIR}" ]; then
    echo "Module ${MODULENAME} seems to be present. Overwrite its contents? (y/n)"
    read yn
    if ! [ "$yn" = 'y' ]; then
        exit 1
    fi
else
    mkdir "${MODULEDIR}"
fi

# Parameters seem sane, continue...
cp -a ${TEMPLATEDIR}/* "${MODULEDIR}"
find ${MODULEDIR} -type f -exec sed -i s/"modulename"/"${MODULENAME}"/g {} +

echo "New module of type ${TEMPLATEDIR} created to ${MODULEDIR}"
