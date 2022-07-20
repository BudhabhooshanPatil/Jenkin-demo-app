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
    ln -s /usr/local/bin/fastlane /usr/bin/fastlane
    /usr/bin/fastlane scan
    '''
}
