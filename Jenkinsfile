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
    xcodebuild -scheme FastlaneDemoApp -project ./FastlaneDemoApp.xcodeproj -derivedDataPath /Users/bhooshanpatil/Library/Developer/Xcode/DerivedData -destination 'platform=iOS Simulator,id=5CF59080-6BE6-48D3-8853-F9388BB49D89' build test
    '''
}
