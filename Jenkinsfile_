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
        git(url: 'https://github.com/matthieu-eck/CI-TEST', branch: 'master')
      }
    }
    stage('Npm Install') {
      steps {
        sh 'npm install'
      }
    }
  }
}