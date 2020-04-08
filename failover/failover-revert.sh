kubectl delete -f customer-serv-entry.yaml --context=$CTX_LOCAL
kubectl delete -f customer.yaml --context=$CTX_REMOTE
kubectl delete -f mysql-serv-entry.yaml --context=$CTX_REMOTE
kubectl delete -f customer-failover.yaml --context=$CTX_LOCAL
kubectl apply -f ../customer-serv-entry.yaml --context=$CTX_LOCAL
kubectl apply -f ../vs-cust.yaml --context=$CTX_LOCAL
