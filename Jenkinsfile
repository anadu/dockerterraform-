pipeline {
    agent any

    stages {
        stage('checkout')
           steps {
              git branch: 'main', git credentialsId: 'tfe', url: 'https://github.com/anadu/dockerterraform-.git'
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