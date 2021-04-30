pipeline {
    agent any

    // environment{
    //         DATABASE_CREDENTIALS = credentials("CREDENTIALS")
    //         PASSWD = credentials("PASSWD")
            
    // }            PROBABLY NECCESSARY AT SOME POINT

    stages{

        // stage('Stage 0: Test'){
        //     steps{
               
        //         sh "bash testing.sh"             TERRAFORM ???

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
                
                sh "docker ps && docker images"                                             //  PULLS FROM DOCKERHUB AND
                sh "sudo docker run -d -p 9966:9966 springcommunity/spring-petclinic-rest "  //  RUNS BACKEND CONTAINER
              
            }                                            
        }
        // stage('Stage 3: Config'){
        //     steps{                                  // NEEDS ANSIBLE

        //         sh "/home/jenkins/.local/bin/ansible-playbook -i inventory.yaml playbook.yaml "
        //     }
        // }


        // stage('Stage 4: Deploy'){                        //     TO BE DONE WITH KUBERNETES
        //     steps{

        //         sh "docker stack deploy --compose-file docker-compose.yaml Sentencer"
                
        //     }
        // }
    }
}