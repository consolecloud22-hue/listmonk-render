FROM listmonk/listmonk:latest
# Bind the core binary execution paths
ENTRYPOINT ["/listmonk/listmonk"]
# Pass the required database overrides down directly on startup
CMD ["--config", "", "--install", "--idempotent", "--yes"]
