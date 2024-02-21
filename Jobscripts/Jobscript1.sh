#!/bin/bash
#SBATCH --job-name="animaldataset"
#SBATCH --chdir=.
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --ntasks-per-node=1     
#SBATCH --nodes=1
#SBATCH --ntasks=1                   
#SBATCH --cpus-per-task=40
#SBATCH --gres=gpu:1
#SBATCH --time=00:20:00
#SBATCH --qos=debug

module purge; module load gcc/8.3.0 cuda/10.2 cudnn/7.6.4 nccl/2.4.8 tensorrt/6.0.1 openmpi/4.0.1 atlas scalapack/2.0.2 fftw/3.3.8 szip/2.1.1 ffmpeg/4.2.1 opencv/4.1.1 python/3.7.4_ML arrow/3.0.0 torch/1.9.0a0 text-mining/2.1.0 torchvision/0.11.0 tensorflow/2.6.0

python yolov7/train.py --workers 40 --device 0 --sync-bn --batch-size 32 --epochs 1 --data custom.yaml --img 416 416 --cfg yolov7/cfg/training/yolov7.yaml --weights yolov7_training.pt --name yolov7_custom


