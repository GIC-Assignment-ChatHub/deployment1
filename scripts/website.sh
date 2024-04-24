source load_env.sh

if [ -z "$WEBSITE_POD" ]; then
    echo "WEBSITE_POD is not set (check .env file)"
    exit 1
fi

# Docker image
docker build -t registry.deti/gic-chathub/website:latest -f ../docker/Dockerfile.website .
docker push registry.deti/gic-chathub/website:latest

# Deploy website
kubectl apply -f ../k3s/website.yaml -n gic-chathub

# Copy website files to pod
for file in $(ls ../src/website); do
    kubectl cp -n gic-chathub ../src/website/$file $WEBSITE_POD:/usr/share/nginx/html
done
