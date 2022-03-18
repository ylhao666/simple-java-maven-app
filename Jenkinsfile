pipeline {
    agent any
    environment {
        APP_NAME = 'MMS-API'
        APP_VERSION = '1.0.1'
        PACKAGE_NAME = 'MMS-API'
    }
    stages {
        // 构建 jar 生成 openapi 文档
        stage('Build') {
            steps {
                sh 'sh ./jenkins/scripts/build.sh'
            }
            agent {
                docker "maven:3.6.3-slim"
                // TODO 测试挂载卷
            }
        }

        // 单元测试
        stage('Test') {
            steps {
                sh 'sh ./jenkins/scripts/test.sh'
            }
        }

        // 部署容器
        stage('Deploy') {
            steps {
                sh 'sh ./jenkins/scripts/deploy.sh'
            }
            agent {
                docker "openjdk:8-jre-slim-buster"
            }
            environment {
                IMAGE_NAME = 'mms-api'
                IMAGE_VERSION = '1.0.0'
                DOCKERFILE_NAME = "Dockerfile"
            }
            post {
                failure {
                    echo "部署失败"
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