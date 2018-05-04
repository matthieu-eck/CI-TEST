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
        sh './jenkins/scripts/get-ip.shsh'
        input 'Stop container ?'
      }
    }
  }
  environment {
    net = 'host'
  }
}