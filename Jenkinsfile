pipeline {
agent {
docker { 
image 'bryandollery/alpine-docker'
}
}
stages{
stage('manifest'){
steps{
sh "name: ${JOB_NAME}"
sh "time: ${currentBuild.startTimeInMillis}"
sh " ${BUILD_NUMBER}"
sh "commit: ${GIT_COMMIT}"
sh "url: ${GIT_URL}"

}
}

stage('build'){
steps{

sh 'docker build --tag manifest-holder-sa:latest .'
}
}
}}
