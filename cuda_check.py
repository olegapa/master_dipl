import torch

# Проверка доступности CUDA
cuda_available = torch.cuda.is_available()
print(f"CUDA available: {cuda_available}")

if cuda_available:
    # Текущее устройство CUDA
    current_device = torch.cuda.current_device()
    print(f"Current CUDA device: {current_device}")

    # Имя текущего устройства CUDA
    device_name = torch.cuda.get_device_name(current_device)
    print(f"Current CUDA device name: {device_name}")

    # Версия CUDA, скомпилированная с PyTorch
    cuda_version = torch.version.cuda
    print(f"CUDA version compiled with PyTorch: {cuda_version}")

    # Версия cuDNN
    cudnn_version = torch.backends.cudnn.version()
    print(f"cuDNN version: {cudnn_version}")

    print(torch.cuda.device_count())

    # Подробная информация о всех доступных устройствах CUDA
    for i in range(torch.cuda.device_count()):
        device_name = torch.cuda.get_device_name(i)
        device_capability = torch.cuda.get_device_capability(i)
        device_properties = torch.cuda.get_device_properties(i)
        print(f"Device {i}: {device_name}")
        print(f"  Capability: {device_capability}")
        print(f"  Properties: {device_properties}")
        print(f"  Properties: {device_properties}")