pipeline {
    agent {
        docker {
            image 'docker:latest'
            args '--privileged'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t yl0070/nginx:v1 .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publishing..'
                withCredentials([string(credentialsId: 'docker-hub-creds', variable: 'DOCKER_HUB_CREDS')]) {
                    sh 'docker login -u yl0070 -p Aa123456'
                    sh 'docker push yl0070/nginx:v1'
                }
            }
        }
    }
}
