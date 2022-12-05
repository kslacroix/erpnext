helm upgrade --install erpnext --create-namespace --namespace erpnext frappe/erpnext --values values.yaml
kubectl apply -f ./ingress-erpnext.yaml -n erpnext
