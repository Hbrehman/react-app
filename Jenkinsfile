pipeline {
  agent any
  stages {
    stage('git checkout') {
      steps {
        git(url: 'https://github.com/Hbrehman/react-app.git', branch: 'main')
      }
    }

    stage('build') {
      steps {
        sh 'docker build -t hbrehman/node-app'
      }
    }

    stage('deploy static file') {
      steps {
        sh 'sudo cp index.html /var/www/html/'
      }
    }

  }
}