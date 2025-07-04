docker volume create n8n_data

docker run -it --rm \
    --name n8n \
    -p 5678:5678 \
    -v n8n_data:/home/node/.n8n \
    docker.n8n.io/n8nio/n8n

# For PostgreSQL database support, 
# docker run -it --rm \
#  --name n8n \
#  -p 5678:5678 \
#  -e DB_TYPE=postgresdb \
#  -e DB_POSTGRESDB_DATABASE=<POSTGRES_DATABASE> \
#  -e DB_POSTGRESDB_HOST=<POSTGRES_HOST> \
#  -e DB_POSTGRESDB_PORT=<POSTGRES_PORT> \
#  -e DB_POSTGRESDB_USER=<POSTGRES_USER> \
#  -e DB_POSTGRESDB_SCHEMA=<POSTGRES_SCHEMA> \
#  -e DB_POSTGRESDB_PASSWORD=<POSTGRES_PASSWORD> \
#  -v n8n_data:/home/node/.n8n \
#  docker.n8n.io/n8nio/n8n