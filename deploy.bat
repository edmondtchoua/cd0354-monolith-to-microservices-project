@echo off
kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl delete svc backend-feed
kubectl delete svc backend-user
kubectl delete svc frontend
kubectl delete svc reverseproxy

kubectl apply -f .\feed-service.yaml
kubectl apply -f .\user-service.yaml
kubectl apply -f .\frontend-service.yaml
kubectl apply -f .\reverseproxy-service.yaml

kubectl apply -f .\feed-deployment.yaml
kubectl apply -f .\user-deployment.yaml
kubectl apply -f .\frontend-deployment.yaml
kubectl apply -f .\reverseproxy-deployment.yaml

kubectl apply -f https://k8s.io/examples/application/php-apache.yaml
pause