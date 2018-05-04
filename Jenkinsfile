pipeline {
  agent {
    dockerfile {
      filename 'DockerFileTest'
    }

  }
  stages {
    stage('Build') {
      steps {
        echo 'Building Container'
      }
    }
    stage('Sleep') {
      steps {
        input 'Stop container ?'
      }
    }
  }
  environment {
    net = 'host'
  }
}