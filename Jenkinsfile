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

                        bat '''
                            gradle clean build
                            gradle copyResources
                        '''
                
            }
        }
        stage('Test') {
            steps {
                
                        bat '''
                            gradle test
                            gradle sonarqube
                        '''
                        
                  
            }
        }
        stage('Deploy') {
            steps {                
                        bat '''
                            docker build -t java-app .
                            docker run -it --name java-app-container java-app
                        '''
                 }           
        }
    
}

post {
        always {
            // Cleanup or other post-build steps
            echo 'Cleaning up...'
            powershell '''
                docker rm -f java-app-container || echo "No container to remove"
                docker rmi -f java-app || echo "No image to remove"
            '''
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


