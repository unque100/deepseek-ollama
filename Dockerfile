# 1. Use Ubuntu base
FROM ubuntu:22.04

# 2. Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# 3. Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# 4. Pull model during build
RUN ollama serve --host 127.0.0.1 & \
    sleep 10 && \
    ollama pull deepseek-coder || true

# 5. Expose Ollama default port
EXPOSE 11434

# 6. Run Ollama in foreground on all interfaces (important for Railway!)
CMD ["ollama", "serve", "0.0.0.0"]
