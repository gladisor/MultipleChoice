#!/bin/bash

#SBATCH -J name_of_your_experiment

#SBATCH -p gpu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 48:00:00

#SBATCH -o log-%j.out
#SBATCH --mail-user=tristan.shah@sjsu.edu

module load python3
module load anaconda
module load cuda/11.2
conda activate atlas-env
srun julia --project scripts/ppo.jl ## your run command