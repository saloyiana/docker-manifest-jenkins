pipeline {
agent {
docker { 
image 'bryandollery/alpine-docker'
}
}
stages{
stage('manifest'){
steps{
sh "echo 'name' ${JOB_NAME} > manifest.txt"
sh "echo 'time:' ${currentBuild.startTimeInMillis} > manifest.txt"
sh " echo 'number:' ${BUILD_NUMBER} > manifest.txt"
sh "echo 'commit:' ${GIT_COMMIT} > manifest.txt"
sh "echo 'url:' ${GIT_URL} > manifest.txt"
sh 'cat manifest.txt'

}
}

stage('build'){
steps{

sh 'docker build --tag manifest-holder-sa:latest .'
}
}
}}
