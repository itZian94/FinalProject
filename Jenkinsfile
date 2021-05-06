pipeline {
    agent any
    stages{
        stage('Configuration'){
            steps{
                sh 'bash jenkins/configuration.sh'
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
               sh 'bash jenkins/orchestration.sh' 
           }
       }
        stage('Deployment with Kubernetes'){
           steps{        
               sh "echo 'Here Kubernetes deploys the application'"        
               sh 'bash jenkins/deploy.sh'
           }                                            
       }
        stage('Deployment with Kubernetes'){
           steps{        
               sh "echo Access the plication through the following IP:"    
               sh "kubectl get svc | grep balanceload | gawk '{print $4}' "
           }                                            
       }
    }
}
