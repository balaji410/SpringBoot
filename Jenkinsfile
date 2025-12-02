// Jenkinsfile
pipeline {
    agent any
    tools {
        maven 'Maven-3.9.6' // The name we configured in Jenkins
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
