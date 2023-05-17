pipeline {
    agent any 
    stages {
        stage('Build') { 
            agent{
                docker{
                    image 'node:18.16.0-alpine'
                }
            }
            steps {
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