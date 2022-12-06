helm upgrade --install erpnext --create-namespace --namespace erpnext frappe/erpnext --values values.yaml --version 5.0.5
kubectl apply -f ./ingress-erpnext.yaml -n erpnext
