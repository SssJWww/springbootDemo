#!/bin/groovy

pipeline {
    agent any
//     agent {
//         label any
//     }

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
                    sh 'docker build -t demo:v1 .'
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