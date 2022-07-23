pipeline {
    agent any
    stages {
        stage('Start Unit Test') {
            steps {
                echo "Running build"
                sh '''
                    cd /Users/bhooshanpatil/Desktop/SampleProject-TestCase-Executions
                    export PATH="$PATH:/usr/local/bin:/usr/local/bin:/usr/local/sbin$:"
                    fastlane scan
                   '''
            }
        }
    }
}
