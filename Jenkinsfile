pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                if (env.BRANCH_NAME == 'main') {
                    echo "Hello World! from main"
                } else {
                    echo "Hello World! from feature branch"
                }
            }
        }
    }
}

// node {
//     stage('Run the main') {
//         if (env.BRANCH_NAME == 'main') {
//             echo 'I only execute on the main branch'
//             sh '''
//                 cd /Users/bhooshanpatil/Desktop/SampleProject-TestCase-Executions
//                 export PATH="$PATH:/usr/local/bin:/usr/local/bin:/usr/local/sbin$:"
//                 fastlane scan
//                 '''
//         } else {
//             echo 'I execute elsewhere'
//         }
//     }
// }
