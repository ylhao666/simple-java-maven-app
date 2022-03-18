pipeline {
    agent any
    environment {
        APP_NAME = 'MMS-API'
        APP_VERSION = '1.0.1'
    }
    stages {
//        stage('Hello') {
//            steps {
//                sh 'mvn --version'
//            }
//        }
//        stage('Step') {
//            steps {
//                sh 'echo "Hello World"'
//                sh '''
//                    pwd
//                    ls -al
//                '''
//                // 设置重试时间
//                retry(3) {
//                    sh 'sh ./jenkins/scripts/retry.sh'
//                    // 设置超时时间
//                    timeout(time: 5, unit: 'SECONDS') {
//                        sh 'sh ./jenkins/scripts/timeout.sh'
//                    }
//                }
//            }
//        }
        stage('Maven') {
            steps {
                sh 'printenv'
                sh "mvn --version"
            }
            agent {
                docker "maven:3.6.3-slim"
            }
            environment {
                PACKAGE_NAME = 'MMS-API'
            }
        }

        stage('Java') {
            steps {
                sh 'printenv'
                sh "java -version"
            }
            agent {
                docker "openjdk:8-jre-slim-buster"
            }
            environment {
                IMAGE_NAME = 'mms-api'
                IMAGE_VERSION = '1.0.0'
            }
        }

        stage('Env') {
            steps {
                sh 'printenv'
            }
        }
    }
    //    全局post
    post {
        always {
            echo "Always"
        }
        success {
            echo "Success"
        }
        failure {
            echo "Failure"
        }
    }
}