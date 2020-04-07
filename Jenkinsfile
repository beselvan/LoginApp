pipeline {
    agent any

    stages {
        stage('GIT Clone') {
            steps {
                echo 'Cloning GIT repository'
		
            }
        }
        stage('Building Application') {
            steps {
                echo 'Maven Building Application'
		sh "mvn package"
		
            }
        }
        stage('Deploy') {
            steps {
                echo 'Docker Deploying Application'
		sh "export DOCKER_HOST=104.197.45.115"
		sh "cd $WORKSPACE"
		sh "whoami"
		sh "docker-compose up -d"
		
            }
        }
    }
}
