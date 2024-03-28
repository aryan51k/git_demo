from ultralytics import YOLO

# Load a model
model = YOLO('/model/yolov8small.pt')  # pretrained YOLOv8n model

# Run batched inference on a list of images
results = model(['images.jpeg'])