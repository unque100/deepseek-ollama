# Use official Ollama image
FROM ollama/ollama:latest

# Pull deepseek-coder model
RUN ollama pull deepseek-coder

# Expose Ollama default port
EXPOSE 11434

# Run Ollama server
CMD ["ollama", "serve"]