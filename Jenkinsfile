pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
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
        sh '''bash ./jenkins/scripts/get-ip.sh
node /poc/main.js'''
        input 'Stop container ?'
      }
    }
  }
}