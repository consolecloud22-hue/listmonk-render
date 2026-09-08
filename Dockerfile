FROM listmonk/listmonk:latest
# Hard-inject the required environment variables directly into the build container env profile
ENV LISTMONK_db__uri="postgresql://listmonk_db_7912_user:p32H6sfcGItB9rf4e6E2GRbD5Wbwyz6W@://render.com"
ENV LISTMONK_app__admin_username="admin"
ENV LISTMONK_app__admin_password="YourSecurePassword123"
ENV PORT="9000"
# Set the binary execution root paths
ENTRYPOINT ["/listmonk/listmonk"]
# Automatically create the missing subscription tracking tables on image spin-up
CMD ["--config", "", "--install", "--idempotent", "--yes"]
