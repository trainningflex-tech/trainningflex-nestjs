pipeline {
    agent {
        label 'nestjs'
    }

    environment{
        PROJECT_NAME = 'APIWORKOUT'
        DOCKER_PORT= '3000'
    }

    stages{ 
        stage ('Testando') {
            steps{
                echo 'Testando a pipeline'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'node:18.16.0-alpine'
                    label 'nestjs'
                }
            }
            steps {
                
                sh 'npm install'
                sh 'npm install bcrypt'
            }

        }
    }
}