docker buildx create --use
docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64 -t warpdriven/rq-dashboard-fast:latest --push .


