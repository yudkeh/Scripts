Simple scripts to run Jenkins locally, using this script you can use few Jenkins setups when every setup own its jenkins-home.

# war file based installation

Before running the scripts, first create folder which contains the Jenkisn war file (jenkins_home will get created inside it).

To run on linux copy the jenkins-run.sh file to the folder mentioned above and run:
./jenkins-run.sh {jenkins war file} {debug port}

To run on Windows copy the jenkins-run.bat file to the folder mentioned above and run:
jenkins-run.bat

# Docker based installation

Before running the scripts, first create folder that will be used as the jenkins_home (jenkins will bind in host port 8090).

./jenkins-run-upgrade.sh {path to the created folder} {jenkins version}