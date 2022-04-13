#! /bin/bash    

### Nathan Heinrich, University of Regina
### 03/03/21
### heinricn@uregina.ca
### A batch submission script based on an earlier version by Richard Trotta, Catholic University of America

echo "Running as ${USER}"
RunList=$1
if [[ -z "$1" ]]; then
    echo "I need a run list process!"
    echo "Please provide a run list as input"
    exit 2
fi
if [[ $2 -eq "" ]]; then
    MAXEVENTS=-1
else
    MAXEVENTS=$2
fi

##Output history file
historyfile=hist.$( date "+%Y-%m-%d_%H-%M-%S" ).log
##Input run numbers
inputFile="/group/c-kaonlt/USERS/${USER}/simc_gfortran/batch/Runlists/${RunList}"

while true; do
    read -p "Do you wish to begin a new batch submission? (Please answer yes or no) " yn
    case $yn in
        [Yy]* )
            i=-1
            (
            ##Reads in input file##                                                       
            while IFS='' read -r line || [[ -n "$line" ]]; do
                echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
                echo "Infile Name read from file: $line"
                echo ""
                ##infile##
                runNum=$line
		##Output batch job file                                                                        
		batch="${USER}_${runNum}_SIMC_Job.txt"
                tape_file=`printf $MSSstub $runNum`
                tmp=tmp
                ##Finds number of lines of input file##
                numlines=$(eval "wc -l < ${inputFile}")
                echo "Job $(( $i + 2 ))/$(( $numlines + 1 ))"
                echo "Running ${batch} for ${runNum}"
                cp /dev/null ${batch}
                ##Creation of batch script for submission
                echo "PROJECT: c-kaonlt" >> ${batch} # Or whatever your project is!
		echo "TRACK: analysis" >> ${batch} ## Use this track for production running
		#echo "TRACK: debug" >> ${batch} ### Use this track for testing, higher priority
                echo "JOBNAME: PionLT_SIMC_${runNum}" >> ${batch} ## Change to be more specific if you want
		echo "DISK_SPACE: 50 GB" >> ${batch}
                echo "MEMORY: 3000 MB" >> ${batch}
		echo "CPU: 1" >> ${batch} ### hcana is single core, setting CPU higher will lower priority and gain you nothing!
		#echo "INPUT_FILES: ${tape_file}" >> ${batch}
                echo "COMMAND:'/group/c-kaonlt/USERS/${USER}/simc_gfortran/batch/make_summary.sh ${runNum}'"  >> ${batch}
                echo "MAIL: ${USER}@jlab.org" >> ${batch}
                echo "Submitting ${batch}"
                eval "swif2 add-jsub SIMC -script ${batch} 2>/dev/null"
                echo " "
		sleep 2
		#rm ${batch}
                i=$(( $i + 1 ))
		if [ $i == $numlines ]; then
		    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		    echo " "
		    echo "###############################################################################################################"
		    echo "############################################ END OF JOB SUBMISSIONS ###########################################"
		    echo "###############################################################################################################"
		    echo " "	
		fi
		done < "$inputFile"
	     )
	    break;;
        [Nn]* ) 
	        exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

