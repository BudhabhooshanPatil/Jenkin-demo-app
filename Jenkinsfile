pipeline {
    agent any
    stages {
        stage('Start Unit Test') {
            steps {
                echo "Running build"
                sh '''
                    export PATH="$PATH:/usr/local/bin:/usr/local/bin:/usr/local/sbin$:"
                    fastlane scan
                    pwd
                    open fastlane/test_output/report.html
                   '''
            }
        }
    }
}
