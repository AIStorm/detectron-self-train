#!/usr/bin/env bash
#SBATCH --job-name=bdd_baseline
#SBATCH -o gypsum/logs/%j_bdd_baseline.txt 
#SBATCH -e gypsum/errs/%j_bdd_baseline.txt
#SBATCH -p 1080ti-long
#SBATCH --gres=gpu:8
#SBATCH --mem=100000
##SBATCH --cpus-per-task=4
##SBATCH --mem-per-cpu=4096



python tools/train_net_step.py \
    --dataset bdd_peds \
    --cfg configs/baselines/bdd100k.yaml  \
    --set TRAIN.SNAPSHOT_ITERS 10000 \
    --use_tfboard \


