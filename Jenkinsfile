pipeline {
    agent {
        docker {
            image 'node:18.16.0-alpine'
            args '-p 3000:3000'
        }
    }
    stages{ 
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm install bcrypt'
            }

        }
    }
}