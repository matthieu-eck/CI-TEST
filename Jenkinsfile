pipeline {
  agent {
    dockerfile {
      filename 'MyDockerFile'
    }

  }
  stages {
    stage('Testing') {
      steps {
        sh 'echo "hello"'
      }
    }
  }
  environment {
    Testing = 'Testing'
  }
}