pipeline {
  agent any
  stages {
    stage('git checkout') {
      steps {
        git(url: 'https://github.com/Hbrehman/react-app.git', branch: 'main')
      }
    }

    stage('install dependencies') {
      steps {
        sh 'npm install'
      }
    }

  }
}