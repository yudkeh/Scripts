#!/bin/bash
for i in `seq 1 $2`;
do
curl -u $3:$4 -H "Content-Type: application/json" -d '{"repositories": ["generic-local"],"principals":{"users" : {"user1": ["r","w","m"]}}}' -X PUT $1/api/security/permissions/permission$i
done   
