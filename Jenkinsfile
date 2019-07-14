pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('User Examine') {
      steps {
        input message: 'Finished using the web site? (Click "Proceed" to continue('
      }
    }
  }
}