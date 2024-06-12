pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven3"
    }

    stages {
        stage('Checkout') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/aymendr/projet-maven.git'
            }
        }
        stage('Build') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn -DskipTests clean package"
            }
        }
        stage('Test') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn test"
            }
        }     
        stage('Deploy') {
            steps {
                // Run Maven on a Unix agent.
                echo "Artifact deployed"
            }
        }           
    }
}

