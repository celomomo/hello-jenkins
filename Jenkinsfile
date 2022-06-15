pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh("./build-mgmtd.sh")
                sh("./build-meta-storage.sh")
                sh ("./build-client.sh")
                echo "helloworld"
            }
        }
    }
}
