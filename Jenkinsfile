// Jenkinsfile
pipeline {
    agent any
    tools {
        maven 'Maven' // The name we configured in Jenkins
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
