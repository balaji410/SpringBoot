pipeline {
    agent any
 
    environment {
        IMAGE_NAME = "kscodes/springboot-ci-cd"
        VERSION = "1.0.${BUILD_NUMBER}"
    }
 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/balaji410/SpringBoot.git'
            }
        }
 
        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }
 
        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }
 
        stage('Docker Build & Push') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME}:${VERSION} ."
                    sh "docker push ${IMAGE_NAME}:${VERSION}"
                }
            }
        }
 
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh "kubectl set image deployment/springboot-app springboot=${IMAGE_NAME}:${VERSION} --record"
                }
            }
        }
    }
 
    post {
        success {
            echo "✅ Deployment successful: ${IMAGE_NAME}:${VERSION}"
        }
        failure {
            echo "❌ Build or deployment failed"
        }
    }
}
 
