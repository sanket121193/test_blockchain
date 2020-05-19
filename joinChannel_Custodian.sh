echo
echo
echo "############# Join channel request for Student ##################"
curl -s -X POST \
  http://localhost:3001/channels/primechannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQGlybS5jb20iLCJvcmdOYW1lIjoiQ3VzdG9kaWFuIiwiaWF0IjoxNTgxNTA5MjI0fQ.I1yi_UncyLsy2lbLqSob7krrREZlisL3QpRmBX_j4XE" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Student.prime.com", "peer1.Student.prime.com"]
}'
echo
echo "############# Join channel request for Student completed. ################"


