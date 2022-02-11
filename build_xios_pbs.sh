#!/bin/bash
#PBS -P e14
#PBS -q express
#PBS -l ncpus=8
#PBS -l mem=20GB
#PBS -l wd
#PBS -l walltime=2:00:00
#PBS -l software=intel-compiler
#PBS -l storage=gdata/hh5+scratch/access+gdata/access+gdata/e14

source setup_gadi_env.sh

./make_xios --prod --full --netcdf_lib netcdf4_par --arch X64_GADI --job 8

