#! /bin/bash
#SBATCH --constraint=el9
#srun hostname

#
# Description:
# ======================================================
# Created:  Muhammad Junaid
# University of Regina, CA
# Date :30-04-2025
# ======================================================
#

echo
echo "Running as ${USER}"

# Input arguments
RUNTYPE=$1
ANATYPE=$2
INPUTFILE=$3

if [[ -z "$1" || ! "$RUNTYPE" =~ ^(heep|production)$ ]]; then # Check the 2nd argument was provided and that it's one of the valid options
    echo ""
    echo "I need a valid run type"
    while true; do
	echo ""
	read -p "Please type in a run type from - heep - production - Case sensitive! - or press ctrl-c to exit : " RUNTYPE
	case $RUNTYPE in
	    '');; # If blank, prompt again
	    'heep'|'production') break;; # If a valid option, break the loop and continue
	esac
    done
fi
if [[ -z "$2" ]]; then
    echo "I need a Analysis type - SIMC!"
    exit 2
fi
if [[ -z "$3" ]]; then
    echo "I need a simc input file process!"
    echo "Please provide a simc input file as input do not include .inp"
    exit 3
fi

# Path to the simc running script
UTILPATH="/u/group/c-pionlt/USERS/${USER}/simc_gfortran/input"
ANASCRIPT="${UTILPATH}/run_simc_tree.sh"

# Input simc input file
Workflow="LTSep_${USER}" # Change this as desired
inputFile="/u/group/c-pionlt/USERS/junaid/simc_gfortran/input/${INPUTFILE}.inp"

while true; do
    read -p "Do you wish to begin a new batch submission? (Please answer yes or no) " yn
    case $yn in
        [Yy]* )
            # Define batch job file
            batch="${USER}_${INPUTFILE}_SIMC_${RUNTYPE}_Job.txt"

            # Create batch file contents
            {
                echo "MAIL: ${USER}@jlab.org"
                echo "PROJECT: c-kaonlt"
                echo "TRACK: analysis"  # Change to 'debug' for testing
                echo "JOBNAME: PionLT_${INPUTFILE}_SIMC_${RUNTYPE}_Job"
				echo "MEMORY: 3000 MB"
				#echo "OS: Alma9"
				echo "CPU: 1"  # hcana is single core, setting CPU higher will lower priority and gain you nothing!
				#echo "TIME: 1"
				echo "COMMAND: ${ANASCRIPT} ${INPUTFILE} ${RUNTYPE}"
			} > "${batch}"

			# Submit the batch job
			echo "Submitting batch"
			eval "swif2 add-jsub ${Workflow} -script ${batch} 2>/dev/null" # Swif2 job submission, uses old jsub scripts
			echo " "

			sleep 2
			rm "${batch}"
			echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			echo " "
			echo "###############################################################################################################"
			echo "############################################ END OF JOB SUBMISSIONS ###########################################"
			echo "###############################################################################################################"
			echo " "
	    	eval 'swif2 run ${Workflow}'
	    	break;;
        [Nn]* ) 
	    exit;;
        * ) echo "Please answer yes or no.";;
    esac
done