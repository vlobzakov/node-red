git clone https://github.com/chroma-core/chroma
cd chroma/
docker-compose up --build -d
sleep 10
docker_id=$(docker ps | grep chroma-server | awk -F\  '{print $1}')
docker update --restart=always $docker_id
