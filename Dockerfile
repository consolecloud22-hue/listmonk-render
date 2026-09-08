FROM listmonk/listmonk:latest

# Force Listmonk to launch while strictly honoring standard environment variables
CMD ["--config", "", "--install", "--idempotent", "--yes"]
