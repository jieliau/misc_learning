# Clear Docker cache
docker system prune -f

# Create volume
docker volume create --name "volumeName"

# Create network
docker network create "networkName"

# Build container image
docker build -t jieliau/imageName -f dockerfile.dockerdile .

# Run container
docker run -itd -e "ENV=$ENV" --network "networkName" --name "containerName" containerImage
docker run containerImage "command"

# Exec container
docker exec -it container "commandExecute"

# Copy
docker cp container:/path/file $PWD/path/file

# Clean up
docker rm $(docker stop $(docker ps -a -q --filter ancestor="containerImage")) 2>/dev/null || true
docker ps -a -f "name=containerName" -q | xargs docker stop
docker ps -a -f "name=containerName" -q | xargs docker rm

# Clear container image
docker rmi

# Search orphan image
docker images | grep "^<nonw>"

# Cleaning orphan images
docker rmi -f $(docker images -f "dangling=true" -q)

# Cleaning stop container
docker rmi $(docker ps -af "status=exited" -q)

# docker-compose example
docker-compose -f docker-compose.yaml up -d
docker-compose -f docker-compose.yaml down
