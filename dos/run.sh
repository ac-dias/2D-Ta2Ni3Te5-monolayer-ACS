#!/bin/bash
#PBS -N  dos-ta2ni3te5
#PBS -e  job.err
#PBS -o  job.o
#PBS -q  workq
#PBS -l  nodes=01:ppn=16

module load vasp-6

ulimit -s unlimited

export OMP_NUM_THREADS=1
export I_MPI_FABRICS=shm
#export I_MPI_HYDRA_TOPOLIB=ipl

cd $PBS_O_WORKDIR

mpirun -np $NCPUS vasp_std > log.out





