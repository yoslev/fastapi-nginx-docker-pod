pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '777777777777777777 Building..'
//                 sh 'docker build -t yl0070/nginx:v1 .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publishing..'
                sh 'docker login -u yl0070 -p Aa123456'
//                 sh 'docker push yl0070/nginx:v1'
            }
        }
        stage('K8s deploy deployment') {
            steps {
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
            }
        }
        stage('K8s deploy Service') {
            steps {
                echo 'K8s deploy Service..'
                sh 'kubectl apply -f nginx-service.yaml'
            }
        }
        stage('K8s deploy Ingress') {
            steps {
                echo 'K8s deploy Service..'
                sh 'kubectl create -f ingress.yaml'
            }
        }
    }
}

