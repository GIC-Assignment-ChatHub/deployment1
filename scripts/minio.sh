kubectl apply -f ../k3s/minio/minio-secret.yaml

kubectl apply -f ../k3s/minio/minio-headless.yaml

kubectl apply -f ../k3s/minio/minio-stateful-deployment.yaml

kubectl apply -f ../k3s/minio/minio-service.yaml