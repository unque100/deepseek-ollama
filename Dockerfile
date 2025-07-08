# Use the official Ollama base image
FROM ollama/ollama

# Pull deepseek-coder model during build
RUN ollama pull deepseek-coder

# Expose Ollama's default port
EXPOSE 11434

# Run Ollama server
CMD ["ollama", "serve"]