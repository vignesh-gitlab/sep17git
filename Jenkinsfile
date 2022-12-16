node('docker-node'){
    stage('Git SCM Checkout'){
        git 'https://github.com/vignesh-gitlab/sep17git.git'
    }
    stage('DockerImage Build'){
        sh 'docker build -t myimg:$BUILD_NUMBER .'
    }
    stage('Docker run'){
        try{
            sh 'docker rm -f myweb'
        }catch(error){
            //Nothing
        }
        sh 'docker run -itd -p 83:80 --name myweb myimg:$BUILD_NUMBER'
    }
}
