#!/usr/bin/env bash
#PBS -N pythonjob
#PBS -m bea
#PBS -P ildas.spons
#PBS -M ird600406@iitd.ac.in 
#PBS -l select=1:ncpus=1
#PBS -l walltime=5:00:00
#PBS -q standard
#PBS -o /home/civil/irdstaff/ird600406/Research/1_Paper/1_Datapreprocessing/test_output.txt
#PBS -e /home/civil/irdstaff/ird600406/Research/1_Paper/1_Datapreprocessing/test_error.txt

# Environment
echo "==============================="
echo $PBS_JOBID
cat $PBS_NODEFILE
echo "==============================="
ulimit -s unlimited
cd /home/civil/irdstaff/ird600406/Research/1_Paper/1_Datapreprocessing/
# Module load 
module purge
source /home/civil/irdstaff/ird600406/.bashrc
conda activate imed_lis
# Execute job
python 1_merging.py

exit 0
