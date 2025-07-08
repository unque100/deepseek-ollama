# Use Ollama base image
FROM ollama/ollama

# Expose the default Ollama port
EXPOSE 11434

# Pull model and keep server running in foreground
CMD bash -c "ollama serve & sleep 10 && ollama pull deepseek-coder && pkill -f 'ollama serve' && ollama serve"
