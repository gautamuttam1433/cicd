pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-1'
        TF_WORKSPACE = 'default'
    }

    stages {
        stage('Initialize') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Validate') {
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }
        stage('Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Apply') {
            steps {
                input message: 'Apply Terraform changes?', ok: 'Deploy'
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
