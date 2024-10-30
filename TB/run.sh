#!/bin/bash
#PBS -N  ta2ni3te5
#PBS -e  job.err
#PBS -o  job.o
#PBS -q  workq 
#PBS -l nodes=salpeter-09:ppn=16

module load wtb-dev-intel

ulimit -s unlimited

export OMP_NUM_THREADS=$NCPUS

export I_MPI_FABRICS=shm

cd $PBS_O_WORKDIR

wtb.x < input.dat







