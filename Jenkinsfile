pipeline {
agent {
docker { 
image 'bryandollery/alpine-docker'
}
}
stages{
stage('manifest'){
steps{
##sh """
#echo <<E0F > ./manifest.txt 
#who build this : ${BUILD_ID}
##what is the build number : ${BUILD_NUMBER}
#what about the URL: ${BUILD_URL}
#that's all GOOOOO, I'll carry on
#wait, I need you commit number : ${GIT_COMMIT}
#E0F
#"""
sh """
cat <<EOF > ./manifest.txt
name: ${JOB_NAME}
time: ${currentBuild.startTimeInMillis}
build #: ${BUILD_NUMBER}
commit: ${GIT_COMMIT}
url: ${GIT_URL}
EOF
"""
}
}
}}
