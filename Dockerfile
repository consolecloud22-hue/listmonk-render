FROM listmonk/listmonk:latest

# Hard-inject your secure configuration values
ENV LISTMONK_db__uri="postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com"
ENV LISTMONK_app__admin_username="admin"
ENV LISTMONK_app__admin_password="YourSecurePassword123"
ENV PORT="9000"

# FORCE DELETE the default template configuration file so Listmonk must read our ENV vars above
RUN rm -f config.toml

ENTRYPOINT ["/listmonk/listmonk"]

CMD ["--install", "--idempotent", "--yes"]
