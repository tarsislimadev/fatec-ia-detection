## Install dependencies

echo python -m pip install -r requirements.txt

python -m pip install -r requirements.txt

## Train model

echo yolo detect train data=dataset/data.yaml model=yolov8n.pt epochs=50 imgsz=640

yolo detect train data=dataset/data.yaml model=yolov8n.pt epochs=50 imgsz=640
