echo
echo "############# Join channel request for AdminTeam ##################"
curl -s -X POST \
  http://localhost:3001/channels/primechannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAxQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJBZG1pblRlYW0iLCJpYXQiOjE1ODYxODI5MzJ9.Wd1SUlFjOOe2Y4g0RZ-y255Sgo73QPozTKg1vc_6um0" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.AdminTeam.prime.com"]
}'
echo
echo "############# Join channel request for AdminTeam completed. ################"

echo
echo "############# Join channel request for Student ##################"
curl -s -X POST \
  http://localhost:3001/channels/primechannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJTdHVkZW50IiwiaWF0IjoxNTg2MTgyOTMzfQ.T-pf_ZFBkIl85hcmENId_hCC5WTVKvMD9EHRfTyegsQ" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Student.prime.com"]
}'
echo
echo "############# Join channel request for Student completed. ################"

echo
echo "############# Join channel request for Employer##################"
curl -s -X POST \
  http://localhost:3001/channels/primechannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAzQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJFbXBsb3llciIsImlhdCI6MTU4NjE4MjkzM30.AZ_FXH6UUt742yRMMVnLlxbYBaQp5LYKzuIhlj4J7XY" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Employer.prime.com"]
}'
echo
echo "############# Join channel request for Student Employer. ################"


echo

echo "############# Join channel request for University##################"
curl -s -X POST \
  http://localhost:3001/channels/primechannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA0QHByaW1lLmNvbSIsIm9yZ05hbWUiOiJVbml2ZXJzaXR5IiwiaWF0IjoxNTg2MTgyOTMzfQ.8XEBPBs8dF3iy-LpNMle1pleHa6LFYlp0H8HVebtljs" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.University.prime.com"]
}'
echo
echo "############# Join channel request for University completed. ################"

