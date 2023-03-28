pipeline {
  agent any
  stages {
    stage('git checkout') {
      steps {
        git(url: 'https://github.com/Hbrehman/react-app.git', branch: 'main')
      }
    }

    stage('deploy') {
      steps {
        sh 'sudo cp index.html /var/www/html/'
      }
    }

    stage('deploy static file') {
      steps {
        sh 'sudo cp index.html /var/www/html/'
      }
    }

  }
}