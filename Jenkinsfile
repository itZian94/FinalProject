pipeline {
    agent any
    stages{
        stage('Configuration'){
            steps{
                sh 'bash scripts/configuration.sh'
            }
        }
        stage('Building'){
           steps{
               sh "docker-compose build"                                             
           }
       }
        stage('Pushing to DockerHub'){
           steps{                                             
               sh "docker-compose push"
           }
       }
       stage('Orchestration with Terraform'){
           steps{
               sh "echo 'Here Terraform is setting up the K8s cluster'"
               sh 'bash scripts/orchestration.sh' 
           }
       }
       stage('Deployment with Kubernetes'){
           steps{        
               sh "echo 'Here Kubernetes deploys the application'"        
               sh 'bash scripts/deploy.sh'
           }                                            
       }
    }
}
