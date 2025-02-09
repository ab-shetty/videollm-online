#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Install PyTorch and dependencies
conda install -y pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia

# Install required Python packages
pip install transformers accelerate deepspeed peft editdistance Levenshtein tensorboard gradio moviepy submitit
pip install flash-attn --no-build-isolation

# Download and extract FFmpeg
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar xvf ffmpeg-release-amd64-static.tar.xz
rm ffmpeg-release-amd64-static.tar.xz

# Rename extracted FFmpeg directory
mv ffmpeg-*-amd64-static ffmpeg

# Confirm installation
echo "Installation complete."
