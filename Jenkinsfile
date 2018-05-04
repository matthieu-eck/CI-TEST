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
  }
}