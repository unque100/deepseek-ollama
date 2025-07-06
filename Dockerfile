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

# 4. Set host binding to allow external access (e.g., Railway, Render)
ENV OLLAMA_HOST=0.0.0.0

# 5. Pre-pull model at runtime (optional fallback)
RUN mkdir -p /root/.ollama/models

# 6. Expose Ollama port
EXPOSE 11434

# 7. Run Ollama in foreground
CMD ["ollama", "serve"]
