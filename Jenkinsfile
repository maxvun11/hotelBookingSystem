pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sam011103/hotelBookingSystem.git'
            }
        }
        stage('Build') {
            steps {

                        powershell 'gradle clean build'
                        powershell 'gradle copyResources'
                
            }
        }
        stage('Test') {
            steps {
                
                        powershell 'gradle test'
                        powershell 'gradle sonarqube'
                  
            }
        }
        stage('Deploy') {
            steps {                
                        powershell 'docker build -t java-app .'
                        powershell 'docker run -it --name java-app-container java-app'
                 }           
        }
    
}

post {
        always {
            // Cleanup or other post-build steps
            echo 'Cleaning up...'
            powershell 'docker rm -f java-app-container || echo "No container to remove"'
            powershell 'docker rmi -f java-app || echo "No image to remove"'
        }
        success {
            echo 'Build succeeded!!'
            // You could add notification steps here, e.g., send an email
        }
        failure {
            echo 'Build failed!!'
            // You could add notification steps here, e.g., send an email or Slack message
        }
    }
    }


