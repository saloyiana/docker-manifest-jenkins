pipeline {
agent {
docker { 
image 'bryandollery/alpine-docker'
}
}
stages{
stage('manifest'){
steps{
sh """
cat <<E0F > ./manifest.txt 
who build this : ${BUILD_ID}
what is the build number : ${BUILD_NUMBER}
what about the URL: ${BUILD_URL}
that's all GOOOOO, I'll carry on
wait, I need you commit number : ${GIT_COMMIT}
E0F
"""

}
}
}}
