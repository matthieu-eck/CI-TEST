pipeline {
  agent {
    dockerfile {
      filename 'DockerFileTest'
    }

  }
  stages {
    stage('Hello') {
      steps {
        echo 'Hello World'
      }
    }
    stage('') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }
  }
}