pipeline {
  agent any
  tools { 
        maven 'maven-3.2.5'  
    }
   stages{
    stage('CompileandRunSonarAnalysis') {
            steps {	
		sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=devsecopsorganization1_myproject -Dsonar.organization=devsecopsorganization1 -Dsonar.host.url=https://sonarcloud.io -Dsonar.token=d26969ee51c6ca3c32db471235e03bf158b8516e'
			}
        } 
  }
}
