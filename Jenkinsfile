node {

  docker.withTool('docker-latest') {

    def image

    stage('Git Pull') {
      git url: 'https://github.com/joshchu00/docker-jenkins.git', branch: 'master'
    }
    stage('Docker Build') {
      image = docker.build('joshchu00/jenkins:2.153-alpine')
    }
    stage('Docker Push') {
      docker.withRegistry('', 'DockerHub') {
        image.push()
      }
    }
  }
}
