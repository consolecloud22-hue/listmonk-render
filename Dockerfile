FROM listmonk/listmonk:latest
ENTRYPOINT ["/listmonk/listmonk"]
CMD ["--config", "", "--install", "--idempotent", "--yes"]
