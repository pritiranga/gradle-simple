pipeline{
    agent any
    
    tools{
        gradle 'Gradle'
        }
    
    stages {
        stage('Build and Test') {
            steps {
                    // for build
                    sh './gradlew clean build --no-daemon'
                    
                    // for unit testing
                    //junit(testResults: 'build/test-results/test/*.xml', allowEmptyResults : true, skipPublishingChecks: true)
        }
        }

        stage ('Staging_setup') {
            steps {
                sshPublisher(publishers: [sshPublisherDesc(configName: 'docker-host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 20000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)])
            }
        }
    }
}
