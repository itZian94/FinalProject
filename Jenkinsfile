pipeline {
    agent any

    environment{
            DATABASE_CREDENTIALS = credentials("CREDENTIALS")
            PASSWD = credentials("PASSWD")
            
    }

    stages{

        stage('Stage 0: Test'){
            steps{
               
                sh "pwd"

            }
        }

        stage('Stage 1: Build'){
            steps{

                sh "docker-compose build"
                sh "docker-compose up -d"

            }
        }

        stage('Stage 2: Push'){
            steps{
                
                sh "docker ps && docker images"         // Here we push to DockerHub 
                sh "docker-compose push "            
              
            }                                            
        }

    }
}