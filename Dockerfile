# Multi-stage build for lightweight and fast deployment
FROM debian:bookworm-slim AS builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    g++ \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY main.cpp httplib.h ./
RUN g++ -std=c++17 -O3 -pthread main.cpp -o db

# Final minimal runtime container
FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY --from=builder /app/db /app/db
COPY index.html /app/index.html

ENV PORT=8080
EXPOSE 8080

CMD ["/app/db"]
