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
                timeout(time: 5, unit: 'SECONDS') {
                    sh './scripts/timeout.sh'
                }
                retry(3) {
                    sh './scripts/retry.sh'
                    timeout(time: 5, unit: 'SECONDS') {
                        sh './scripts/timeout.sh'
                    }
                }
            }
        }
    }
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