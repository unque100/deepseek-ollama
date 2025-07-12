#!/bin/bash

# Start server in background so model can be pulled
ollama serve --host 0.0.0.0 &

# Wait for server to boot
sleep 20

# Pull model
ollama pull tinyllama:1.1b-chat

# Stop background server
pkill -f "ollama serve"

# Start server in foreground to keep container alive and accessible
exec ollama serve --host 0.0.0.0
