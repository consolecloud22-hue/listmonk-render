FROM listmonk/listmonk:latest

# Define the exact core executable binary path
ENTRYPOINT ["/listmonk/listmonk"]

# Pass parameters straight into the binary logic array on startup
CMD ["--config", "", "--db-uri", "postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com", "--admin-username", "admin", "--admin-password", "YourSecurePassword123", "--install", "--idempotent", "--yes", "--static-dir", "."]
