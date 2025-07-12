FROM ollama/ollama

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 11434

CMD ["/entrypoint.sh"]
