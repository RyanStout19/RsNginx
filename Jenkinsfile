pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply the Kubernetes manifests
                    sh "kubectl apply -f /var/lib/jenkins/workspace/mynginx/nginx.yaml"
                    sh "kubectl apply -f /var/lib/jenkins/workspace/mynginx/ServiceLB.yaml"
                }
            }
        }
    }
}
