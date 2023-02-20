pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '777777777777777777 Building..'
<<<<<<< HEAD
//                 sh 'docker build -t yl0070/nginx:v1 .'
=======
                sh 'docker build -t yl0070/nginx:v1 .'
>>>>>>> f85788c1faee67e706f4d46791806a5899643c17
            }
        }
        stage('Publish') {
            steps {
                echo 'Publishing..'
                sh 'docker login -u yl0070 -p Aa123456'
<<<<<<< HEAD
//                 sh 'docker push yl0070/nginx:v1'
=======
                sh 'docker push yl0070/nginx:v1'
>>>>>>> f85788c1faee67e706f4d46791806a5899643c17
            }
        }
        stage('K8s deploy deployment') {
            steps {
<<<<<<< HEAD
//               withCredentials([string(credentialsId: 'docker-hub-creds', variable: 'DOCKER_HUB_CREDS')]) {
//               withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'docker-hub-creds',
//                                   usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
              withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                echo 'K8s deploy deployment..'
                sh 'cd k8s-deployment'
                sh 'docker login'
                sh 'docker pull yl0070/nginx:v1'
                sh 'kubectl apply -f nginx-fastapi-deployment.yaml'
              }
=======
                echo 'K8s deploy deployment..'
                sh 'cd k8s-deployment'
                sh 'cd k8s-deployment && pwd && echo "Aa123456Aa" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f nginx-fastapi-deployment.yaml'
>>>>>>> f85788c1faee67e706f4d46791806a5899643c17
            }
        }
        stage('K8s deploy Service') {
            steps {
                echo 'K8s deploy Service..'
<<<<<<< HEAD
                sh 'kubectl apply -f nginx-service.yaml'
=======
                sh 'cd k8s-deployment && pwd && echo "Aa123456Aa" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f nginx-service.yaml'
>>>>>>> f85788c1faee67e706f4d46791806a5899643c17
            }
        }
        stage('K8s deploy Ingress') {
            steps {
                echo 'K8s deploy Service..'
<<<<<<< HEAD
                sh 'kubectl create -f ingress.yaml'
=======
                sh 'cd k8s-deployment && pwd && echo "Aa123456Aa" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f ingress.yaml'
            }
        }
        stage('K8s describe all') {
            steps {
                echo 'K8s describe all..'
                sh 'cd k8s-deployment &&  echo "Aa123456Aa" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  get all'
                sh 'cd k8s-deployment &&  echo "Aa123456Aa" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  get ingress'
                sh 'echo "Aa123456Aa" | sudo -S  curl -i  http://www.mydomain.com/app1'
>>>>>>> f85788c1faee67e706f4d46791806a5899643c17
            }
        }
    }
}

