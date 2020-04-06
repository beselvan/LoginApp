pipeline {
    agent any

    stages {
        stage('GIT Cloning') {
            steps {
                echo 'GIT Cloning'
		
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
		
            }
        }
    }
}
