pipeline {
    agent any

    stages {
        stage('Build Image') { 
            steps {
                script {
                    dockerapp = docker.build('trainningflex-tech/trainningflex-nestjs', '-f ./Dockerfile ./')
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