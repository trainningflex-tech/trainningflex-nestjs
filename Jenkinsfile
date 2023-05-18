pipeline {
    agent any 

    stages {
        stage('Build') { 
            agent{
                docker{
                    image 'node:18.16.0-alpine'
                    args ' -p 3000:3000'
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