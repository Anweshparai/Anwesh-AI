# Anwesh-AI — VectorDB (HNSW + RAG)

A lightweight, high-performance in-memory vector database and retrieval-augmented generation (RAG) system built in C++ with an interactive web UI.

## Features

- **Vector Search Algorithms**:
  - HNSW (Hierarchical Navigable Small World)
  - KD-Tree
  - Brute Force (Exact Search)
- **Distance Metrics**: Euclidean, Cosine, Manhattan
- **RAG & Ollama Integration**: Connects with local Ollama models for embeddings and text generation
- **Web Dashboard**: Interactive frontend served directly on port `8080` (`index.html`)
- **Single-Header Server**: Powered by `cpp-httplib`
- **Docker & Cloud Ready**: Includes Dockerfile and multi-stage Linux builds for 1-click cloud deployment

## Getting Started

### Prerequisites

- C++17 compatible compiler (e.g., GCC, Clang, or MSVC)
- *(Optional)* [Ollama](https://ollama.com/) running locally for embeddings and text generation

### Building Locally

On Windows (MinGW / GCC):
```powershell
g++ -std=c++17 -O3 main.cpp -o db.exe -lws2_32
```

On Linux / macOS:
```bash
g++ -std=c++17 -O3 main.cpp -o db -pthread
```

### Running Locally

```powershell
./db.exe
```

Open your browser and navigate to:
```
http://localhost:8080
```

## Cloud Deployment

### Deploy on Render (Free)
1. Sign in to [Render](https://dashboard.render.com/) with GitHub.
2. Click **New +** -> **Web Service**.
3. Select your repository `Anweshparai/Anwesh-AI`.
4. Render will automatically detect the **Dockerfile** and deploy your application.
5. You'll receive a public HTTPS URL (e.g., `https://anwesh-ai-vectordb.onrender.com`).

### Deploy with Docker
```bash
docker build -t anwesh-ai .
docker run -p 8080:8080 anwesh-ai
```
