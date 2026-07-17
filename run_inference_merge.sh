#!/bin/bash
cd /data/LLM/WSC/short_COT

# Step 1: Merge LoRA adapter with base model
swift export \
    --model /data/LLM/model/Qwen3-VL-8B-Instruct \
    --adapter /data/LLM/short_response/retraining/deploy/v7-20260622-152336/checkpoint-1964 \
    --merge_lora true \
    --output_dir /data/LLM/short_response/retraining/deploy/Qwen3_8b_lora \
    --load_args false 