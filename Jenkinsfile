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

// This shows a simple example of how to archive the build output artifacts.
node {
    stage "Create build output"
    
    // Make the output directory.
    sh "mkdir -p output"

    // Write an useful file, which is needed to be archived.
    writeFile file: "output/usefulfile.txt", text: "This file is useful, need to archive it."

    // Write an useless file, which is not needed to be archived.
    writeFile file: "output/uselessfile.md", text: "This file is useless, no need to archive it."

    stage "Archive build output"
    
    // Archive the build output artifacts.
    archiveArtifacts artifacts: 'output/*.txt', excludes: 'output/*.md'
}

node {
    stages {
        stage("Create build output") {
            steps {
                sh "mkdir -p HelloWorld"

                // Write an useful file, which is needed to be archived.
                writeFile file: "HelloWorld/usefulfile.txt", text: "This file is useful, need to archive it."

                // Write an useless file, which is not needed to be archived.
                writeFile file: "HelloWorld/uselessfile.md", text: "This file is useless, no need to archive it."
            }
        }

        stage("Archive build output") {
            steps {
                // Archive the build output artifacts.
                archiveArtifacts artifacts: 'HelloWorld/*.txt', excludes: 'HelloWorld/*.md'
            }
        }
    }
}
