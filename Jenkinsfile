pipeline {
    agent any

    environment {
        // Set your roll number here
        ROLL_NO = '2332'
        REPO_URL = 'https://github.com/rhythmmca2332/2332_ISA2.git'
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git branch: 'main', url: REPO_URL
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Dockerfile into an image
                script {
                    sh 'docker build -t my-docker-image .'
                }
            }
        }

        stage('Remove Old Container') {
            steps {
                // Remove the existing container if it exists
                script {
                    sh "docker rm -f ${ROLL_NO} || true"
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Create and run the Docker container in daemon mode
                script {
                    sh "docker run -d --name ${ROLL_NO} my-docker-image"
                }
            }
        }
    }

    post {
        always {
            // Cleanup and remove unused Docker images if necessary
            sh 'docker image prune -f'
        }
    }
}
