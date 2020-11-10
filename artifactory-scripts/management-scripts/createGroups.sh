#!/bin/bash
for i in `seq 1 $2`;
do
curl -u $3:$4 -H "Content-Type: application/json" -d '{"description" : "test group $i for rest api"}' -X PUT $1/api/security/groups/group$i
done
