#to get the namepsace available in the cluster
kubectl get namepsace

#to 3 create a namespace dev, prod, qa
kubectl create namepsace dev
kubectl create namepsace prod
kubectl create namepsace qa

#run nginx in each namespace
kubectl run dev-nginx --image nginx namepsace dev
kubectl run prod-nginx --image nginx namepsace prod
kubectl run qa --image nginx namepsace qa

#to get the pods in each namespace
kubectl get pods --namepsace dev
kubectl get pods --namepsace prod
kubectl get pods --namepsace qa

 or
# to get all pods in all namespaces
kubectl get pods -A

 or 

 kubectl get pods --all

#set the namespace context for each nameospace and verify default namespace
kubectl config set-context --current --namespace dev
kubectl get pods

kubectl config set-context --current --namespace prod
kubectl get pods

kubectl config set-context --current --namespace qa
kubectl get qa


kubectl config set-context --current --namespace default
kubectl get pods

#to delete the namespaces and all resources in them
kubectl delete namespace dev prod qa

#to apply a yaml file in the current namespac
#kubectl apply -f <filemname.yml>
