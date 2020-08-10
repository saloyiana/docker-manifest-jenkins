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
sh "echo 'time:' ${currentBuild.startTimeInMillis}"
sh " ${BUILD_NUMBER}"
sh "echo 'commit:' ${GIT_COMMIT}"
sh "echo 'url:' ${GIT_URL}"

}
}

stage('build'){
steps{

sh 'docker build --tag manifest-holder-sa:latest .'
}
}
}}
