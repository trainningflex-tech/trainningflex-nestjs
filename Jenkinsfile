pipeline {
    agent any

    stages {
        stage('Build Image') { 
            steps {
                script {
                    dockerapp = docker.build('trainningflex-api/trainningflex-nestjs: ${env.BUILD_NUMBER}', '-f ./Dockerfile ./')
                }
            }
        }
        stage('Test') { 
            steps {
                echo "Test"
            }
        }
        stage('Deploy') { 
            steps {
                echo "Test"
            }
        }
    }
}