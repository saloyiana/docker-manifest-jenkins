pipeline {
agent {
docker { 
image 'docker-in-jenkins:latest'
}
}
stages{
stage('build'){
steps{
sh """
cat << EOF > ./manifest.txt 
who build this ? 
${BUILD_ID}
when ?
${BUILD_TIMESTAMP}
what is the build number ?
${BUILD_NUMBER}

what about the URL ?
${BUILD_URL}

that's all GOOOOO, I'll carry on
wait, I need you commit number 

${GIT_COMMIT}
EOF
"""

}
}
}
}}
