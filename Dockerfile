# Use official Ollama base image (best for compatibility)
FROM ollama/ollama:latest

# Expose Ollama's default API port
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]
