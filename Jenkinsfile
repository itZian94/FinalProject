pipeline {
    agent any
    stages{
        stage('Configuration'){
            steps{
                sh 'bash jenkins/configuration.sh'
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
