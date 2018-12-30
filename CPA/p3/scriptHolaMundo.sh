#!/bin/sh
#PBS -l nodes=2:ppn=16,walltime=00:10:00
#PBS -j oe
#PBS -q cpa
#PBS -d .
#PBS -W x="NACCESSPOLICY:SINGLEJOB"

cat $PBS_NODEFILE
mpiexec ./holaMundo


