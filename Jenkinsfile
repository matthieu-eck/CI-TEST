pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 3123:3000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Npm Install') {
      steps {
        sh 'npm install'
      }
    }
  }
}