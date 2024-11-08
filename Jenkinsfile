#!/bin/groovy

def DOCKER_IMAGE = 'demo'
def DOCKER_TAG = 'v2'

pipeline {
    agent any

    stages {
        stage('Initialization') {
            steps {
                script {
                    echo 'init success'
                }
            }
        }

        stage('Build and Push image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}", "-f Dockerfile .")
//                     sh 'docker build -t demo:v1 -f Dockerfile .'
                    sh "docker tag springdemo:${DOCKER_TAG} sssjwww/demolist:${DOCKER_TAG}"
                    sh "docker push sssjwww/demolist:${DOCKER_TAG}"
                }
            }
        }

    }
}