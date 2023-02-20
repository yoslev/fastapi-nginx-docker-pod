call kubectl delete ingress my-ingress
call kubectl delete -n default service nginx-service
call kubectl delete -n default deployment nginx-fastapi-deployment
pause
call kubectl get all
pause