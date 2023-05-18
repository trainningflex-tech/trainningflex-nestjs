pipeline {
    agent any

    stages {
        stage('Build Image') { 
            steps {
                script {
                    dockerapp = docker.build("trainningflex-nestjs:" + BUILD_NUMBER, "-f ./Dockerfile ./")
                }
            }
        }
        stage('Deploy Portainer') {
            steps {
                script{
                    withDockerRegistry([credentialsId: 'dockerhub-credentials', url: 'https://registry.example.com']) {
                // Faz o push da imagem para o registro do Docker
                    docker.withRegistry('', 'dockerhub-credentials') {
                    dockerapp.push()

                }
            }
                    container('auth-app_sevice'){
                sh 'docker run -d -p 3000:3000 --name auth-app_sevice trainningflex-nestjs:' + BUILD_NUMBER
            }
                
        }
    }
}
    }
}