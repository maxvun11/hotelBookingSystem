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
                        bat 'gradle clean build'
                        bat 'gradle copyResources'
            }
        }
        stage('Test') {
            steps {
                        bat 'gradle test'
                        bat 'gradle sonarqube'
            }
        }
        stage('Deploy') {
            steps {                
                        bat 'docker build -t java-app .'
                        bat '''
                            docker run -it --name java-app-container java-app
                        '''
                        
                 }           
        }
    
}

post {
        always {
            // Cleanup or other post-build steps
            echo 'Cleaning up...'
            bat 'docker rm -f java-app-container || echo "No container to remove"'
            bat 'docker rmi -f java-app || echo "No image to remove"' 
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


