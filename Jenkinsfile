pipeline {
    agent any

    stages {
        stage('GIT Cloning') {
            steps {
                echo 'GIT Cloning'
		git clone https://github.com/beselvan/LoginApp.git
            }
        }
        stage('Building Application') {
            steps {
                echo 'Building Application'
		mvn package
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying Application'
		docker-compose up -d
            }
        }
    }
}
