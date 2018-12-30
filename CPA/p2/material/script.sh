#!/bin/sh
#PBS -l nodes=1,walltime=00:05:00
#PBS -j oe
#PBS -q cpa
#PBS -d .

OMP_NUM_THREADS=2 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt

OMP_NUM_THREADS=4 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt

OMP_NUM_THREADS=8 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt

OMP_NUM_THREADS=16 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt

OMP_NUM_THREADS=32 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt

OMP_NUM_THREADS=64 ./simil-ejercicio3b donantes.txt pacientes.txt salida.txt





