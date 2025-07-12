#!/bin/bash

# Start server in background so model can be pulled
ollama serve &

# Wait for server to boot
sleep 10

# Pull tiny model that works on Railway CPU
ollama pull tinyllama:1.1b-chat

# Stop background server
pkill -f "ollama serve"

# Start server in foreground so Railway keeps container alive
exec ollama serve
