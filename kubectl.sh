kubectl get namepsace

kubectl create namepsace dev
kubectl create namepsace prod
kubectl create namepsace qa

kubectl run dev-nginx --image nginx namepsace dev
kubectl run prod-nginx --image nginx namepsace prod
kubectl run qa --image nginx namepsace qa

kubectl get pods --namepsace dev
kubectl get pods --namepsace prod
kubectl get pods --namepsace qa

 or

 kubectl get pods -A

 or 

 kubectl get pods --all

kubectl config set-context --current --namespace dev
kubectl get pods

kubectl config set-context --current --namespace prod
kubectl get pods

kubectl config set-context --current --namespace qa
kubectl get qa


kubectl config set-context --current --namespace default
kubectl get pods


kubectl delete namespace dev prod qa
#----------------------------------------------------------

kubectl apply -f <filemname.yml>
