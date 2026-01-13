#!/bin/bash
#SBATCH --job-name=ai-test
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err
#SBATCH --time=00:10:00
#SBATCH --partition=gpu_a100
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G

module load 2025
module load Python/3.11
module load CUDA/12.1
module load matplotlib

source ~/my_venv/bin/activate

python question4.py
