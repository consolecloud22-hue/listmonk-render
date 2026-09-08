FROM listmonk/listmonk:latest

ENTRYPOINT ["/listmonk/listmonk"]

# Passing variables via CLI flags completely bypasses config files and dashboard settings
CMD ["--db-uri", "postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com", "--admin-username", "admin", "--admin-password", "YourSecurePassword123", "--install", "--idempotent", "--yes", "--static-dir", "."]
