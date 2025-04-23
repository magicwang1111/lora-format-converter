from safetensors import safe_open

path = "/data/shared_data/comfyui/models_full/loras/wan/detailz-wan.safetensors"

with safe_open(path, framework="pt") as f:
    print("Keys in safetensor model:")
    for key in f.keys():
        print(key)
