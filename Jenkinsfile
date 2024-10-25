pipeline {
    agent any 
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/rhythmmca2332/2332_ISA2.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t 2332 .'
                }
            }
        }
        stage('Remove Old Container') {
            steps {
                script {
                    sh 'docker rm -f 2332 || true'
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    sh 'docker run -d --name 2332 -p 5000:5000 2332'
                }
            }
        }
    }
}
