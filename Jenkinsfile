pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '777777777777777777 Building..'
                sh 'docker build -t yl0070/nginx:v1 .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publishing..'
                sh 'docker login -u yl0070 -p Aa123456'
                sh 'docker push yl0070/nginx:v1'
            }
        }
        stage('K8s deploy deployment') {
            steps {
                echo 'K8s deploy deployment..'
                sh 'cd k8s-deployment'
                sh 'cd k8s-deployment && pwd && echo "10LiGisha!" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f nginx-fastapi-deployment.yaml'
            }
        }
        stage('K8s deploy Service') {
            steps {
                echo 'K8s deploy Service..'
                sh 'cd k8s-deployment && pwd && echo "10LiGisha!" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f nginx-service.yaml'
            }
        }
        stage('K8s deploy Ingress') {
            steps {
                echo 'K8s deploy Service..'
                sh 'cd k8s-deployment && pwd && echo "10LiGisha!" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  apply -f ingress.yaml'
            }
        }
        stage('K8s describe all') {
            steps {
                echo 'K8s describe all..'
                sh 'cd k8s-deployment &&  echo "10LiGisha!" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  get all'
                sh 'cd k8s-deployment &&  echo "10LiGisha!" | sudo -S  kubectl --kubeconfig /root/.kube/k8s-yl-kubeconfig.yaml  get ingress'
                sh 'echo "10LiGisha!" | sudo -S  curl -i  http://www.mydomain.com/app1'
            }
        }
    }
}

