#!/bin/bash
#PBS -N  bands-ta2ni3te5
#PBS -e  job.err
#PBS -o  job.o
#PBS -q  workq 
#PBS -l nodes=salpeter-05:ppn=32

module load vasp-6

ulimit -s unlimited

export OMP_NUM_THREADS=1
export I_MPI_FABRICS=shm
export I_MPI_HYDRA_TOPOLIB=ipl

cd $PBS_O_WORKDIR

cp INCAR-scf INCAR
cp KPOINTS-scf KPOINTS

mpirun -hostfile $PBS_NODEFILE -np $NCPUS vasp_ncl > log-scf.out

cp INCAR-bnd INCAR
cp KPOINTS-bnd KPOINTS

mpirun -hostfile $PBS_NODEFILE -np $NCPUS vasp_ncl > log-bnd.out

#mpirun -np $NCPUS vasp_std > log6.out





