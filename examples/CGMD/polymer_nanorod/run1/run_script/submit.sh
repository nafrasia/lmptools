#!/bin/bash

#SBATCH --ntasks=32
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=20:00:00
#SBATCH --output=simulation-res-%j.out
#SBATCH --error=simulation-err-%j.err
#SBATCH --job-name=60-1000-run1
#SBATCH --account=def-colin


arg1=$1
# For CEDAR (module load lammps-user-intel)
EXE=/home/nafrasia/scratch/lammps_build/lmp
echo "Starting run at: `date`"
srun ${EXE} < ${arg1} > res.out
echo "Run finished with exit code $? at: `date`"
