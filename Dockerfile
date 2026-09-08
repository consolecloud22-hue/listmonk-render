FROM listmonk/listmonk:latest

# Hard-inject your secure configuration values
ENV LISTMONK_db__uri="postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com"
ENV LISTMONK_app__admin_username="admin"
ENV LISTMONK_app__admin_password="YourSecurePassword123"
ENV PORT="9000"

# FORCE create a dummy empty file to satisfy listmonk's internal file system check
RUN touch config.toml

ENTRYPOINT ["/listmonk/listmonk"]

# By dropping the blank --config quote and using --static-dir, we force env parsing
CMD ["--install", "--idempotent", "--yes", "--static-dir", "."]
