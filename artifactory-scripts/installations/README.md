# Installation scripts

# artifactory-install-upgrade-docker.sh:
Script which can be used in order to install/upgrade and run Artifactory in Docker using the default Derby DB.<br>
Execution syntax:<br>
./artifactory-install-upgrade-docker.sh {path to $ART_HOME folder in local machine} {version number}, for example:<br>
./artifactory-install-upgrade-docker.sh /home/user1/artifactory_home 6.1.0

# artDockerRunner.sh:
Scripts which is ready to use in my machine, the script run specific Artifactory version using docker in predefined location, this help when need to have multiple Artifactory installations for testing purposes.
This instllation use the default Derby db.
