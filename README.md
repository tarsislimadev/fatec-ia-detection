# Detecção de Galinhas com YOLOv8

[![Python](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![YOLOv8](https://img.shields.io/badge/modelo-YOLOv8n-green.svg)](https://github.com/ultralytics/ultralytics)
[![License: MIT](https://img.shields.io/badge/Licen%C3%A7a-MIT-yellow.svg)](./LICENSE)

Um projeto de visão computacional projetado para detectar galinhas e frangos utilizando a arquitetura de ponta **YOLOv8** (You Only Look Once). Este projeto utiliza um dataset customizado, anotado via [CVAT.ai](https://cvat.ai/), e é otimizado para inferência em tempo real em dispositivos móveis ou de borda (edge).

---

## Visão Geral

O objetivo deste projeto é fornecer um modelo confiável para a detecção de aves em diversos ambientes (pastos, galpões, jardins, etc.). Utilizamos o modelo **Ultralytics YOLOv8n** (nano), que equilibra alta precisão com baixa latência, sendo ideal para aplicações em tempo real.

### Principais Características:
- **Desempenho em Tempo Real**: Otimizado para velocidade em hardware limitado.
- **Precisão**: Alta taxa de assertividade na classe 'chicken'.
- **Dataset Estruturado**: Segue o padrão YOLO para facilitar novos treinamentos.

---

## Configuração e Instalação

Para rodar este projeto localmente, certifique-se de ter o Python 3.8 ou superior instalado.

1. **Clonar o repositório**:
```bash
git clone https://github.com/tarsislimadev/fatec-ia-detection.git
cd fatec-ia-detection
```

2. **Instalar dependências**:
```bash
pip install ultralytics
```

---

## Estrutura do Dataset

O dataset está organizado da seguinte forma:

```text
dataset/
├── images/
│    ├── train/      # Imagens de entrada para treinamento
│    └── val/        # Imagens de entrada para validação
├── labels/
│    ├── train/      # Anotações em formato YOLO (.txt) para treinamento
│    └── val/        # Anotações em formato YOLO (.txt) para validação
└── data.yaml        # Arquivo de configuração do dataset
```

---

## Treinando o Modelo

Para retreinar o modelo com seu próprio conjunto de imagens, utilize o comando abaixo:

```bash
yolo detect train data=dataset/data.yaml model=yolov8n.pt epochs=50 imgsz=640
```

*Os pesos finais (`best.pt`) serão salvos em `runs/detect/train/weights/`.*

---

## Executando Inferência (Predição)

Após treinar o modelo, você pode testar a detecção em novas imagens ou vídeos:

```bash
# Inferência em uma imagem
yolo detect predict model=runs/detect/train/weights/best.pt source='caminho/para/imagem.jpg' show=True
```

---

## Contribuições

Contribuições são muito bem-vindas! Se você tiver sugestões ou quiser adicionar mais variedades de aves ao dataset, sinta-se à vontade para abrir um Pull Request.

## Licença

Este projeto está licenciado sob a [MIT License](./LICENSE).
