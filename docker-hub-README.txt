Docker hub 
yl0070 / Aa123456

for: image: nginx:latest

First, make sure you have a Docker Hub account and are logged in. 
If you don't have an account, you can create one at https://hub.docker.com/.

1) Build your Docker image using the docker build command. For example:
   docker build -t username/my-image:tag .
   docker build -t yl0070/nginx:v1 .
   Replace username with your Docker Hub username, my-image with the name you want to give your image, and tag with a version or tag for your image. The . at the end specifies the build context as the current directory.

2) NOT REQUIRED
   Once the build is complete, tag the image with the following command:
   docker tag username/my-image:tag username/my-image:new-tag
   docker tag yl0070/nginx:latest   yl0070/nginx:v1

   Replace new-tag with the version or tag you want to give to this specific image.

3) Log in to Docker Hub using the docker login command:
   docker login
   Enter your Docker Hub username and password when prompted.

4) Push the image to Docker Hub using the docker push command:
   docker push username/my-image:tag
   docker push yl0070/nginx:v1
--------------------------------------------------------------------------

kubectl get deployment 
kubectl get pods
kubectl describe pod <pod-name>
kubectl logs <pod-name>
--------------------------------------------------------------------------
to be changed
