pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker-compose build
                '''
            }
        }
        stage('Push') {
            steps {
                sh '''
                docker-compose push
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                ssh -i "~/.ssh/id_rsa" jenkins@34.175.44.109 << EOF
                rm -rf LBG7-Python-API
                git clone https://github.com/dylantodd01/LBG7-Python-API.git
                cd LBG7-Python-API
                docker-compose down
                docker-compose up -d
                '''
            }
        }
        stage('Clean Up') {
            steps {
                sh '''
                docker system prune --force
                '''
            }
        }
    }
}