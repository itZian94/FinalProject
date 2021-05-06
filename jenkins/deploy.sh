aws eks --region eu-west-2 update-kubeconfig --name final_project_cluster

cd kubernetes
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl apply -f nginxService.yaml
kubectl apply -f ./nginx/configmap.yaml
kubectl apply -f ./nginx/nginxDeployment.yaml

kubectl get svc | grep balanceload