git clone https://github.com/abhitatachar2000/dockerize-chromadb.git
cd dockerize-chromadb/
docker-compose up --build -d
sleep 10
docker_id=$(docker ps | grep chroma:latest | awk -F\  '{print $1}')
docker update --restart=always $docker_id
