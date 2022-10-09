@echo off
kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl delete svc backend-feed
kubectl delete svc backend-user
kubectl delete svc frontend
kubectl delete svc reverseproxy
kubectl delete svc kubernetes 
kubectl delete svc publicfrontend
kubectl delete svc publicreverseproxy
kubectl delete svc kube-dns
kubectl delete svc metrics-server

eksctl delete cluster --name udagrama-eks

pause