docker run -d --expose 9000 --name=portainer --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    --network=hosting-network \
    -e VIRTUAL_HOST=portainer.rubeen.dev \
    -e VIRTUAL_PORT=9000 \
    portainer/portainer-ee:latest