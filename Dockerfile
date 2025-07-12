# Use the official Ollama image
FROM ollama/ollama

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Ollama's default port
EXPOSE 11434

# Start from our script
CMD ["/entrypoint.sh"]
