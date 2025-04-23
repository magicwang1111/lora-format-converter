# 📦 convert_model

A lightweight utility collection for converting, inspecting, and verifying LoRA model formats between **Diffusers** and **Stable Diffusion (Default)** formats.

## 🔧 Features

- ✅ Detect model format (Diffusers or Default)
- 🔄 Convert LoRA weights between formats
- 🔍 Print model keys for inspection
- 🧪 Shell script for one-click single model conversion


## 🔄Convert model format
python converty_lora.py \\
  --input path/to/input_model.safetensors \\
  --output path/to/output_model.safetensors \\
  --target default  # or 'other' for Diffusers

## 🖨 Print model keys
python print_model_key.py

## 🛠 Use the shell script
chmod +x convert_single_lora.sh.sh
./convert_single_lora.sh.sh