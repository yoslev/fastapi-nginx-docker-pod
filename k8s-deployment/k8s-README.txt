minikube addons enable ingress


kubectl get deployment 
kubectl get pods

kubectl describe pod <pod-name>
kubectl describe pod nginx-fastapi-deployment-6ddfc6df8c-ck965

kubectl logs <pod-name>
kubectl logs nginx-fastapi-deployment-6ddfc6df8c-2krlt
--------------------------------------------------------------------------

kubectl get deployments --all-namespaces
NAMESPACE     NAME               READY   UP-TO-DATE   AVAILABLE   AGE
default       nginx-deployment   2/2     2            2           61m
kube-system   coredns            1/1     1            1           68m

kubectl delete -n NAMESPACE deployment DEPLOYMENT
kubectl delete -n default deployment nginx-deployment
kubectl delete -n default deployment nginx-fastapi-deployment



kubectl describe service nginx-service
kubectl get events

----
port-forward :
To expose service listens on port 80 to/as local host port 80:
  kubectl port-forward service/nginx-service 80:80

then:  http://localhost/