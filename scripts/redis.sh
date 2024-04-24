kubectl apply -f ../k3s/redis/redis-config.yaml

kubectl apply -f ../k3s/redis/redis-acl.yaml

kubectl apply -f ../k3s/redis/redis.yaml

kubectl apply -f ../k3s/redis/sentinel.yaml

kubectl apply -f ../k3s/redis/redis-service.yaml

kubectl apply -f ../k3s/redis/sentinel-service.yaml