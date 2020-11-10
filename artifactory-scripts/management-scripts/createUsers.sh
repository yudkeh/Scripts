#!/bin/bash
for i in `seq 1 $2`;
do
curl -u $3:$4 -H "Content-Type: application/json" -d '{"email":"a@a.com","password":"password123456"}' -X PUT $1/api/security/users/user$i
done   
