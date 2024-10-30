#!/bin/bash
#PBS -N  w90-ta2ni3te5
#PBS -e  job.err
#PBS -o  job.o
#PBS -q  workq 
#PBS -l nodes=salpeter-02:ppn=32

module load vasp-6
module load wannier90

ulimit -s unlimited

export OMP_NUM_THREADS=1
export I_MPI_FABRICS=shm
#export I_MPI_HYDRA_TOPOLIB=ipl

cd $PBS_O_WORKDIR

mpirun -hostfile $PBS_NODEFILE -np $NCPUS vasp_std > log-w90.out

wannier90.x wannier90





