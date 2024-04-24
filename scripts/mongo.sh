kubectl apply -f ../k3s/mongo/mongodb-rbac.yaml

kubectl apply -f ../k3s/mongo/mongodb-headless.yaml

kubectl apply -f ../k3s/mongo/mongodb-stateful-deployment.yaml