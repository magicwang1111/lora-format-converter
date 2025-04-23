from safetensors.torch import load_file

weights = load_file("/data/shared_data/comfyui/models_full/loras/wan/detailz-wan.safetensors")
sample_keys = list(weights.keys())[:5]

if any("diffusion_model." in key for key in sample_keys):
    print("→ Diffusers format")
elif any(".lora_down." in key or ".lora_up." in key for key in sample_keys):
    print("→ Default LoRA format")
else:
    print("→ unknow format")
