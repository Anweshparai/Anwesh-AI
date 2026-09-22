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

## Getting Started

### Prerequisites

- C++17 compatible compiler (e.g., GCC, Clang, or MSVC)
- *(Optional)* [Ollama](https://ollama.com/) running locally for embeddings and text generation

### Building

On Windows (MinGW / GCC):
```powershell
g++ -std=c++17 -O3 main.cpp -o db.exe -lws2_32
```

On Linux / macOS:
```bash
g++ -std=c++17 -O3 main.cpp -o db -pthread
```

### Running

```powershell
./db.exe
```

Open your browser and navigate to:
```
http://localhost:8080
```
