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
        sh 'set -x; whoami'
        sh './jenkins/scripts/get-ip.sh'
        input 'Stop container ?'
      }
    }
  }
  environment {
    net = 'host'
  }
}