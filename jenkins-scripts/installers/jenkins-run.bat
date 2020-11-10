SET JENKINS_HOME=%cd%\home
echo %JENKINS_HOME%
java -jar jenkins.war --httpPort=8080
