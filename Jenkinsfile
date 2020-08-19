pipeline {
agent {
docker { 
image 'bryandollery/alpine-docker'
}
}
stages{
stage('manifest'){
steps{
sh "echo 'who build this ?' ${JOB_NAME} > manifest.txt"
sh "echo 'When?' ${currentBuild.startTimeInMillis} >> manifest.txt"
sh " echo 'what is the build number?' ${BUILD_NUMBER} >> manifest.txt"
sh "echo 'what about the URL?' ${GIT_URL} >> manifest.txt"
sh "echo 'wait, I need you commit number' ${GIT_COMMIT} >> manifest.txt"
sh "echo 'here is your manifest' "
sh 'cat manifest.txt'
}}
stage('build'){
steps{
sh 'docker build --tag manifest-holder-sa:latest .'
}}
} }
