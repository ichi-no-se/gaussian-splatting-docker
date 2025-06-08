# 3D Gaussian Splatting (Docker Version)

This repository is an unofficial fork of the [original implementation](https://github.com/graphdeco-inria/gaussian-splatting), providing a **Docker-based environment**.

## 🐳 Docker Environment (Unofficial)

A Dockerfile is provided for Ubuntu 22.04 + CUDA 11.8 + Python 3.10.

This environment is built using `pip` and does not depend on conda.

### 🔧 Usage

```
# Build the image
docker build -t gaussian-splatting .

# Run the container (mount GPU and current directory)
docker run --rm -it --gpus all -v $(pwd):/workspace gaussian-splatting bash
```

📦 Included files
- `Dockerfile`: Docker environment setup file
- `requirements.txt`: Python dependencies
- `requirements-submodules.txt`: List of submodule paths (each can be installed via `pip install -r`)
- `README-original.md`: Original `README.md`

⚠️ Notes
- This is an unofficial environment
- It does not guarantee full compatibility with the original implementation
- At least in the author's environment, both training and inference work properly.

# 3D Gaussian Splatting (Docker版)

本リポジトリは [オリジナル実装](https://github.com/graphdeco-inria/gaussian-splatting) を元に，**Docker 環境を提供する**非公式のフォークです．

## 🐳 Docker 環境（非公式）

Ubuntu 22.04 + CUDA 11.8 + Python 3.10 に対応した Dockerfile を提供しています．

本環境は `pip` ベースで構築されており，conda に依存しない構成です．

### 🔧 使用手順

```bash
# ビルド
docker build -t gaussian-splatting .

# 起動（GPUとカレントディレクトリをマウント）
docker run --rm -it --gpus all -v $(pwd):/workspace gaussian-splatting bash
```

📦 含まれるファイル
- `Dockerfile`：Docker 環境構築ファイル
- `requirements.txt`：Python 依存パッケージ
- `requirements-submodules.txt`：サブモジュールのパスのリスト（`pip install -r` で各モジュールをインストール可能）
- `README-original.md`：オリジナルの `README.md`

⚠️ 注意
- 本環境は非公式なものです
- オリジナルと完全に一致する動作を保証するものではありません
- 筆者の環境では，学習・推論の一連の流れが正常に動作することを確認しています
