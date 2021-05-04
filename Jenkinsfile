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
               sh 'docker-compose build' 
           }
       }
//        stage('Orchestration with Terraform'){
//            steps{
//                sh 'bash jenkins/orchestration.sh' 
//            }
//        }
//        stage('Deployment with Kubernetes'){
//            steps{                
//                sh 'bash jenkins/deploy.sh'
//            }                                            
//        }
    }
}
