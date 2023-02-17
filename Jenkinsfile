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
                sh 'docker build -t yl0070/nginx:v1 .'
            }
        }
        stage('Publish') {
            steps {
                withCredentials([string(credentialsId: 'docker-hub-creds', variable: 'DOCKER_HUB_CREDS')]) {
                    sh 'docker login -u ${DOCKER_HUB_CREDS_USR} -p ${DOCKER_HUB_CREDS_PSW}'
                    sh 'docker tag my-image ${DOCKER_HUB_CREDS_USR}/yl0070/nginx:v1'
                    sh 'docker push ${DOCKER_HUB_CREDS_USR}/yl0070/nginx:v1'
                }
            }
        }
    }
}
