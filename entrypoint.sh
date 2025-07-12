#!/bin/bash

# Start Ollama server in the background
ollama serve &

# Wait for server to initialize
echo "Waiting for Ollama server to be ready..."
sleep 15

# Pull the model (ensure Ollama is ready)
ollama pull deepseek-coder

# Kill the background server process to restart clean
pkill -f "ollama serve"

# Start Ollama in foreground so container stays alive
exec ollama serve
