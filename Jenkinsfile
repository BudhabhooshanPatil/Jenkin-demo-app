pipeline {
    agent any
    stages {
        stage('start') {
            steps {
                echo "Running build"
            }
        }
        stage('switch to project') {
            steps {
                sh 'cd /Users/bhooshanpatil/Desktop/SampleProject-TestCase-Executions'
                echo 'switched to repo'
            }
        }
        stage('set path') {
            steps {
                sh 'export PATH="$PATH:/usr/local/bin:/usr/local/bin:/usr/local/sbin$:"'
                echo 'done set-up path'
            }
        }

        stage('execute fastlane') {
            steps {
                sh 'fastlane scan'
            }
        }
    }
}
