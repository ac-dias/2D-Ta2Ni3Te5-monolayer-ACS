#!/bin/bash
#PBS -N  ta2ni3te5
#PBS -e  job.err
#PBS -o  job.o
#PBS -q  workq 
#PBS -l nodes=salpeter-02:ppn=32

module load vasp-6

ulimit -s unlimited

export OMP_NUM_THREADS=1
export I_MPI_FABRICS=shm
#export I_MPI_HYDRA_TOPOLIB=ipl

cd $PBS_O_WORKDIR

i=50
icount=0
maxstep=4

while [ $i -ne 1 ]
do

mpirun -hostfile $PBS_NODEFILE -np $NCPUS vasp_std > log6.out


icount=$((icount+1))

echo $icount >> log.dat


if [ $icount -ge $maxstep ]; then

	exit 1

fi

cp CONTCAR POSCAR

i=`grep F OSZICAR | tail -n1 | awk '{print $1;}'`

done





