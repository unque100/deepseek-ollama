# Use the official Ollama image (it includes the latest version and GPU/CPU support)
FROM ollama/ollama:latest

# Pull the DeepSeek model at image build (optional)
RUN ollama pull deepseek-coder

# Expose Ollama API port
EXPOSE 11434

# Start Ollama server (no --host needed; it listens on 0.0.0.0 by default)
CMD ["ollama", "serve"]
