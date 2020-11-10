# Management scripts

# createGroups.sh:
Script which used in order to create large number of groups (usually for testing).<br>
Execution syntax:<br>
./createGroups.sh {Artifactory URL} {number of groups} {username} {password}, for example:<br>
./createGroups.sh http://localhost:8081/artifactory 3 admin password

# createPermissions.sh:
Script which used in order to create large number of permissions (usually for testing).<br>
Execution syntax:<br>
./createPermissions.sh {Artifactory URL} {number of permissions} {username} {password}, for example:<br>
./createPermissions.sh http://localhost:8081/artifactory 3 admin password

# createUsers.sh:
Script which used in order to create large number of users (usually for testing).<br>
Execution syntax:<br>
./createUsers.sh {Artifactory URL} {number of users} {username} {password}, for example:<br>
./createUsers.sh http://localhost:8081/artifactory 3 admin password