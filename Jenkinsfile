pipeline {
  agent {
    dockerfile {
      filename 'DockerFileTest'
    }

  }
  stages {
    stage('Hello') {
      parallel {
        stage('Hello') {
          steps {
            echo 'Hello World'
          }
        }
        stage('Test') {
          steps {
            input 'Choose'
          }
        }
      }
    }
    stage('error') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }
  }
}