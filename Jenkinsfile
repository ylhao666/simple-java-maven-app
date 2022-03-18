pipeline {
    agent {
        docker 'maven:3-alpine'
    }
    stages {
        stage('Hello') {
            steps {
                sh 'mvn --version'
            }
        }
        stage('Step') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    pwd
                    ls -al
                '''
                // 设置超时时间
                timeout(time: 5, unit: 'SECONDS') {
                    sh 'sh ./jenkins/scripts/timeout.sh'
                }
                // 设置重试时间
                retry(3) {
                    sh 'sh ./jenkins/scripts/retry.sh'
                    timeout(time: 5, unit: 'SECONDS') {
                        sh 'sh ./jenkins/scripts/timeout.sh'
                    }
                }
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