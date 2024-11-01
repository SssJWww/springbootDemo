#!/bin/groovy

pipeline {
    agent any
//     agent {
//         docker {
//             image 'docker:latest'
//         }
//     }
    environment {
        DOCKER_IMAGE = 'demo'
        DOCKER_TAG = 'v1'
    }

    stages {
        stage('Initialization') {
            steps {
                script {
                    git url: 'https://github.com/SssJWww/springbootDemo.git', branch: 'main'
                    echo 'init success'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }

        stage('Run in docker') {
            steps {
                script {
                    sh 'docker run -d -p 8088:8866 --name demo demo:v1'
                }
            }
        }
    }
}