pipeline {
    agent any 

    tools{nodejs 'node'}

    stages {
        stage('Build') { 
            agent{
                docker{
                    image 'node:18.16.0-alpine'
                }
            }
            steps {
                git 'https://github.com/trainningflex-tech/trainningflex-nestjs'
                sh 'npm install'
                sh 'npm install bcrypt'
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