#!/bin/bash

# Start ollama server in background
ollama serve &

# Wait for the server to be ready (10s is usually safe)
sleep 10

# Pull the model
ollama pull deepseek-coder

# Stop the background server
pkill -f "ollama serve"

# Start the server in the foreground (container stays alive)
ollama serve
