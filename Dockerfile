FROM listmonk/listmonk:latest

# Strip out local config requirements and pass parameters straight into the application
ENTRYPOINT ["/listmonk/listmonk", "--config", ""]

# Tell listmonk to cleanly verify and build database tables on engine boot
CMD ["--install", "--idempotent", "--yes"]
