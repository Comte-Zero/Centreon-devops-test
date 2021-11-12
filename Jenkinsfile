pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Comte-Zero/Centreon-devops-test.git'
            }
        }
        stage('Build') {
            steps {
                bat 'docker build -t list_repos .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run --rm list_repos'
            }
        }
    }
}