#!/bin/bash

# Arguments for running job.
SCRIPT=$HOME/$1
OUT_PATH=$HOME/$2

# SLURM Arguments.
#SBATCH -N 1 		# Number of nodes to reserve.
#SBATCH -J rcorona_exp  # job name.
#SBATCH -t 2:00:00	# Time limit for job.
#SBATCH -p pbatch 	# Used for submitting batch jobs.
#SBATCH --mail-type=ALL # Send email at all points of job (beginning, end).
#SBATCH -C gpunode      # Specify GPU requirement. 

# Run our job.
"${SCRIPT[@]}"
