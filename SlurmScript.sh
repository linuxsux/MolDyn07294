#!/bin/bash
#SBATCH --job-name=my_gpu_job
#SBATCH --gres=gpu:1
#SBATCH --mem=32G
#SBATCH --cpus-per-task=1 
#SBATCH --gpus-per-task=1
#SBATCH --time=30:00:00

module load StdEnv/2020 gcc/9.3.0 cuda/11.4 openmpi/4.0.3 openmm/7.7.0
source $HOME/env-parmed/bin/activate

python Test2.py