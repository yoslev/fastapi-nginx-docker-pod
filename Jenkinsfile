pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Clone the repository and build the Docker image
                script {
                    docker.withServer('tcp://localhost:2375') {
                        def app = docker.build('yl0070/nginx:v1')
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Run the Docker container
                script {
                    docker.withServer('tcp://localhost:2375') {
                        def app = docker.run('yl0070/nginx:v1')
                    }
                }
            }
        }
    }
}