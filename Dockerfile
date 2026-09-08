FROM listmonk/listmonk:latest

# Hard-override the image engine route so it executes the app executable directly
ENTRYPOINT ["/listmonk/listmonk"]

# Feed parameter variables directly to the app layer safely
CMD ["--config", "", "--install", "--idempotent", "--yes"]
