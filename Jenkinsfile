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

                sh "docker ps && docker images"                                             //  PULLS FROM DOCKERHUB AND
                sh "docker-compose build " 

            }
        }

        stage('Stage 2: Push'){
            steps{                

                sh "docker-compose up -d"
                sh "docker-compose down"
              
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