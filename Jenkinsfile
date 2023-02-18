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
                withCredentials([string(credentialsId: 'docker-hub-creds', variable: 'DOCKER_HUB_CREDS')]) {
                    sh 'docker login -u ${DOCKER_HUB_CREDS_USR} -p ${DOCKER_HUB_CREDS_PSW}'
                    sh 'docker push ${DOCKER_HUB_CREDS_USR}/nginx:v1'
                }
            }
        }
    }
}
