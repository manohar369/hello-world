pipeline {
    agent any
    tools {
        maven "MAVEN_HOME"
        jdk "JAVA_HOME"
    }
    stages {
        stage('Clone sources') {
            steps {
                
                 git url: 'https://github.com/manohar369/hello-world.git', branch: 'main'
            }
        }

        stage('Build') {
            
      steps {
          
        sh ''' mvn clean package
        
        echo $env.WORKSPACE'''
          
      }
      
            }
        }
}