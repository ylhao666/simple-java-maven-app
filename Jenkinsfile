pipeline {
    agent {
        docker 'maven:3-alpine'
    }
    stages {
        stage('Test') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}