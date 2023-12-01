#!/bin/bash
#SBATCH -A du040		#account name (use your own)
#SBATCH -p workshopq		#queue name (do not change)
#SBATCH -o slurm.%j.out		
#SBATCH -e slurm.%j.err
#SBATCH -n 128			#number of cores

 
# Asagidaki satiri degistirmeyin
# ------------------------------

module load OpenFOAM/OpenFOAM.com-v2206

source /ari/progs/OpenFOAM/OpenFOAM.com-v2206/OpenFOAM-v2206/etc/bashrc

mpirun icoFoam -parallel > log.icofoam
