mkdir -p ./config
docker run --rm --entrypoint="/bin/sh" \
  -v $(pwd)/config:/mnt \
  matrixdotorg/dendrite-monolith:latest \
  -c "/usr/bin/generate-config \
    -dir /var/dendrite/ \
    -db postgres://dendrite:itsasecret@postgres/dendrite?sslmode=disable \
    -server chat.matmowitch.com > /mnt/dendrite.yaml"
