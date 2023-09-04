pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
               sh git branch: 'main', url: 'https://github.com/anadu/dockerterraform-'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}