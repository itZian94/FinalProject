pipeline {
    agent any

    // environment{
    //         DATABASE_CREDENTIALS = credentials("CREDENTIALS")
    //         PASSWD = credentials("PASSWD")
            
    // }            PROBABLY NOT NECESSARY FOR FINAL PROJECT

    stages{

        // stage('Stage 0: Test'){
        //     steps{
               
        //         sh "bash testing.sh"             MAY NOT BE REQUIRED

        //     }
        // }

        stage('Stage 1: Build'){
            steps{

                sh "docker-compose build"
                sh "docker-compose up -d"          /* DOCKERFILES AND DOCKER-COMPOSE REQUIRED  */

            }
        }

        stage('Stage 2: Push'){
            steps{
                
                sh "docker ps && docker images"         // TO BE SET UP AND SINCRONIZER WITH DOCKERHUB
                sh "docker-compose push "            
              
            }                                            
        }
        stage('Stage 3: Config'){
            steps{                                  // NEEDS ANSIBLE

                sh "/home/jenkins/.local/bin/ansible-playbook -i inventory.yaml playbook.yaml "
            }
        }


        stage('Stage 4: Deploy'){                        //     TO BE DONE
            steps{

                sh "docker stack deploy --compose-file docker-compose.yaml Sentencer"
                
            }
        }
    }
}