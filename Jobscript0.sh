#!/bin/bash
#SBATCH --job-name=entrenamiento_gpu
#SBATCH --output=entrenamiento_gpu.out
#SBATCH --error=entrenamiento_gpu.err
#SBATCH --nodes=1
#SBATCH --gres=gpu:1   # Número de GPUs necesarias
#SBATCH --qos=debug    # Calidad del servicio (QoS) específica
#SBATCH --time=2:00:00   # Tiempo máximo de ejecución (días-horas:minutos:segundos)
#SBATCH --cpus-per-task=40

# Resto del script
module purge
module load bsc/commands gcc/8.3.0 cuda/10.2 cudnn/7.6.4 nccl/2.4.8 tensorrt/6.0.1 openmpi/4.0.1 atlas/3.10.3 scalapack/2.0.2 fftw/3.3.8 szip/2.1.1 ffmpeg/4.2.1 opencv/4.1.1 geos/3.6.2 python/3.7.4_ML proj/5.0.1 jupyterlab/3.2.1 torch/1.9.0a0 torchvision

python yolov7/train.py --workers 8 --device 0 --batch-size 16 --data custom.yaml --img 1024 1024 --cfg yolov7/cfg/training/yolov7.yaml --weights yolov7_training.pt --name yolov7_custom --epochs 1
