FROM listmonk/listmonk:latest

ENTRYPOINT ["/listmonk/listmonk"]

# By passing the --db-* flags explicitly, we completely bypass the config file requirement
CMD ["--db-uri", "postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com", "--admin-username", "admin", "--admin-password", "YourSecurePassword123", "--install", "--idempotent", "--yes", "--static-dir", "."]
