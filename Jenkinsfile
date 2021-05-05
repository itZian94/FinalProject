pipeline {
    agent any
    stages{
        stage('0 - Configuration'){
            steps{
                sh 'bash jenkins/configuration.sh'
            }
        }
        stage('1 - Building'){
           steps{
               sh "docker-compose build"                                             
           }
       }
        stage('2 - Pushing to DockerHub'){
           steps{                                             
               sh "docker-compose push"
           }
       }
       stage('3 - Orchestration with Terraform'){
           steps{
               sh "echo 'Here Terraform is setting up the k8s cluster'"
               sh 'bash jenkins/orchestration.sh' 
           }
       }
       stage('4 - Deployment with Kubernetes'){
           steps{        
               sh "echo 'Here kubernetes deploys the aplication'"        
            //    sh 'bash jenkins/deploy.sh'
           }                                            
       }
    }
}
