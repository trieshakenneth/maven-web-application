pipeline {
  agent any
  tools { 
        maven 'maven-3.2.5'  
    }
   stages{
    stage('CompileandRunSonarAnalysis') {
            steps {	
		sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=devsecopsorganization1_myproject -Dsonar.organization=devsecopsorganization1 -Dsonar.host.url=https://sonarcloud.io -Dsonar.token=912f55ef9ce6ab8bc01ef17c560225f8ceb0e6c1'
			}
        } 
  }
}
