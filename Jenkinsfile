pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "Hello World!"
            }
        }
    }
}

// This shows a simple example of how to run a fast file.
node {
    stage "Run Fast file"
    
    // Run FastLane.
    sh '''
    cd /Users/bhooshanpatil/Desktop/SampleProject-TestCase-Executions
    /usr/local/bin/ fastlane scan
    '''
}
