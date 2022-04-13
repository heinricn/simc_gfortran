#!/bin/bash

echo "Starting Replay script"
echo "I take as arguments the Run Number and max number of events!"
INFILE=$1
### Check you've provided the an argument
if [ -z "${1}" ]; then
    echo "I need a input file!"
    echo "Please provide an input file."
    exit 2
fi
if [[ ${USER} = "cdaq" ]]; then
    echo "Warning, running as cdaq."
    echo "Please be sure you want to do this."
    echo "Comment this section out and run again if you're sure."
    exit 2
fi          

# Set path depending upon hostname. Change or add more as needed  
if [[ "${HOSTNAME}" = *"farm"* ]]; then  
    REPLAYPATH="/group/c-kaonlt/USERS/${USER}/simc_gfortran"
    if [[ "${HOSTNAME}" != *"ifarm"* ]]; then
	source /site/12gev_phys/softenv.sh 2.4
	source /apps/root/6.18.04/setroot_CUE.bash
    fi
    cd "$REPLAYPATH"
fi
cd $REPLAYPATH

echo -e "\n\nStarting SIMC\n\n"
eval "$REPLAYPATH/run_simc_tree ${INFILE}"

if [[ "${INFILE}" = *"COIN"* ]]; then
    eval "root -l -b -q '${REPLAYPATH}/SIMC_Summary.C(\"${INFILE}\",\"C\")'"
elif [["${INFILE}" = *"SHMS"* ]]; then
    eval "root -l -b -q '${REPLAYPATH}/SIMC_Summary.C(\"${INFILE}\",\"S\")'"
else
    eval "root -l -b -q '${REPLAYPATH}/SIMC_Summary.C(\"${INFILE}\",\"H\")'"
fi
exit 0
