#!/bin/bash

# 设置路径
INPUT_DIR="/data/shared_data/comfyui/models_full/loras/wan"
OUTPUT_DIR="/data/shared_data/comfyui/models_full/loras/wan_converted"
SCRIPT_PATH="/data/wangxi/converty_lora.py"

# 自动创建输出目录
mkdir -p "$OUTPUT_DIR"

# 遍历所有 .safetensors 文件
for filepath in "$INPUT_DIR"/*.safetensors; do
  filename=$(basename "$filepath")
  output_filepath="$OUTPUT_DIR/comfyui-$filename"

  echo "🔄 转换: $filename"
  python "$SCRIPT_PATH" \
    --input "$filepath" \
    --output "$output_filepath" \
    --target default
done

echo "✅ 所有转换完成，输出位置：$OUTPUT_DIR"
