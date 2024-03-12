---
# YOLO Fine-Tuning Project
---
## Project Description
This project focuses on fine-tuning the YOLO (You Only Look Once) model for object detection, using our custom dataset. The aim is to enhance YOLO's capabilities in identifying and classifying objects specific to the dataset provided. This adaptation will allow for more accurate and efficient object detection in environments represented by our dataset.

## Author
Elena Alegret

## Project Files
Below is a list of the files included in this project, along with a brief description of each:

1. **Jobscripts**: A job script file with all the jobscripts used for initializing or setting up a part of the project on a computing cluster MareNostrum.
2. **Results**: A file containing all the results obtained from the execution.
    - **12710650.err**: Error log file from a specific run of the project.
    - **12710650.out**: Output file from a specific run, containing results, logs, or messages generated during the execution.
    - **Training_gpu.err**: Error log file specifically for the GPU-based training process, essential for identifying issues in model training.
    - **Training_gpu.out**: Output file for the GPU-based training process, including training logs and performance metrics.
3. **data**: A data file.
   - **YOLO_Preprocessing.ipynb**: Jupyter notebook containing code for preprocessing the data for YOLO model training, such as image augmentation or format conversion.
5. **custom.yaml**: YAML configuration file, containing settings or parameters specific to the project.
6. **yolov7_training.pt**: A PyTorch model file, representing a trained YOLOv7 model, ready for use or further fine-tuning.
