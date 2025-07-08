# Use Ollama base image
FROM ollama/ollama

# Expose the Ollama server port
EXPOSE 11434

# Start the server and pull the model
CMD bash -c "ollama serve & sleep 5 && ollama pull deepseek-coder && wait"