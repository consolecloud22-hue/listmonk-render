FROM listmonk/listmonk:latest
ENTRYPOINT ["/listmonk/listmonk", "--config", ""]
CMD ["sh", "-c", "./listmonk --install --idempotent --yes && ./listmonk"]
