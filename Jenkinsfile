pipeline{
    agent any
        environment {
        AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('SECRET_ACCESS_KEY')
    }
    tools {
        maven 'Maven 3.6.3'
        jdk 'jdk9'
        nodejs 'node 15.11'
    }
    stages {
        stage('Stage 1 - Build Backend') {
            steps {
                script {
                        sh 'sudo docker run -d -p 9966:9966 --name backend springcommunity/spring-petclinic-rest'
                }
            }
        }
        stage('Stage 2 - Build Frontend') {
            steps {
                script {
                        sh 'sudo docker run -d --rm -p 8083:8080 frontend'
                }
            }

    //    stage('Deploy') {
    //         steps {
    //             script {
    //                     sh 'bash jenkins/deploy.sh'
    //             }
    //         }
    //     }
    }
}