pipeline {
    agent any

    stages {
        stage('Build Image') { 
            steps {
                script {
                    dockerapp = docker.build("trainningflex-api/trainningflex-nestjs:" + BUILD_NUMBER, "-f ./Dockerfile ./")
                }
            }
        }
        stage('Push Image'){
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')
                    dockerapp.push('latest')
                    dockerapp.push(BUILD_NUMBER);
                }
            }
        }
    }
}