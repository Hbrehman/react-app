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
        sh 'docker build -t hbrehman/node-app .'
      }
    }

    stage('Login to docker hub') {
      environment {
        DOCKERHUB_PASSWORD = 'Hbr@7300919'
        DOCKERHUB_USER = 'hbrehman'
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
      }
    }

    stage('Runs docker container') {
      steps {
        sh '''docker stop node-app
docker rm node-app
docker run -d -p 3000:3000 --name node-app hbrehman/node-app:latest'''
      }
    }

  }
}