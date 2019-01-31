node {

  docker.withTool('docker-latest') {

    def jenkinsImage

    stage('Git Pull') {
      git url: 'https://github.com/joshchu00/docker-jenkins.git', branch: 'master'
    }
    stage('Docker Build') {
      jenkinsImage = docker.build('docker.io/joshchu00/jenkins:2.153-alpine')
    }
    stage('Docker Push') {
      docker.withRegistry('', 'DockerHub') {
        jenkinsImage.push()
      }
    }
  }
}
