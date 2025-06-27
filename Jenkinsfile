pipeline {
    agent any

    environment {
        IMAGE_NAME = "zhye1104/jenkinsproject"
    }

    stages {
        stage('Zhuohan Ye - Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Zhuohan Ye - Login to Dockerhub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker_hub_login', usernameVariable: 'USER', passwordVariable: 'ACCESS')]) {
                        bat '$ACCESS | docker login -u $USER --password-stdin'
                    }
                }
            }
        }

        stage('Zhuohan Ye - Push image to Dockerhub') {
            steps {
                script {
                    dockerImage.push()
                }
            }
        }
    }
}