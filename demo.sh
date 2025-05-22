#!/bin/bash
# Demo script for license plate detection and recognition.
# Usage: bash demo.sh [IMAGE_PATH] [DETECT_MODEL] [REC_MODEL]

IMAGE_PATH=${1:-imgs}
DETECT_MODEL=${2:-weights/plate_detect.pt}
REC_MODEL=${3:-weights/plate_rec_color.pth}

python detect_plate.py --image_path "$IMAGE_PATH" \
  --img_size 640 --detect_model "$DETECT_MODEL" \
  --rec_model "$REC_MODEL"
