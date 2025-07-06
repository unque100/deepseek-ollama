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

# 4. Expose Ollama default port
EXPOSE 11434

# 5. Run Ollama server (model pulls happen after container starts)
CMD ["ollama", "serve"]
