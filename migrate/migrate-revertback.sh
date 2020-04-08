kubectl scale deployment customer-dep --replicas=1 --context=$CTX_LOCAL
kubectl delete -f migrate-cutover.yaml --context=$CTX_LOCAL
kubectl apply -f migrate-revertback.yaml --context=$CTX_LOCAL
kubectl delete -f customer-serv-entry.yaml --context=$CTX_LOCAL
