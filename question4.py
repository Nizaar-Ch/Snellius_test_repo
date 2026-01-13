import torch

print("Torch version:", torch.__version__)
print("CUDA available (yes if GPU allocated):", torch.cuda.is_available())

if torch.cuda.is_available():
    print("GPU:", torch.cuda.get_device_name(0))
