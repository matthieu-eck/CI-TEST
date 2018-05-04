pipeline {
  agent {
    dockerfile {
      filename 'DockerFile'
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
        sh 'bash ./jenkins/scripts/get-ip.sh'
        input 'Stop container ?'
      }
    }
  }
}