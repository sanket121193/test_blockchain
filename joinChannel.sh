echo
echo "############# Join channel request for AdminTeam ##################"
curl -s -X POST \
  http://localhost:3001/channels/liquorchannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA0QGxpcXVvci5jb20iLCJvcmdOYW1lIjoiQWRtaW5UZWFtIiwiaWF0IjoxNTkwMjEzMTI5fQ.lD7RfihWwy951bulQVgIFjspbhglCxA6wce5cW4KJ0o" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.AdminTeam.liquor.com"]
}'
echo
echo "############# Join channel request for AdminTeam completed. ################"

echo
echo "############# Join channel request for Manufacturer ##################"
curl -s -X POST \
  http://localhost:3001/channels/liquorchannel/peers \  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA1QGxpcXVvci5jb20iLCJvcmdOYW1lIjoiTWFudWZhY3R1cmVyIiwiaWF0IjoxNTkwMjEzMTMwfQ.WOYbZQZAtcad0I2lx6DYQR1AqHKahZa6yCoY5iVlEVU" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Manufacturer.liquor.com"]
}'
echo
echo "############# Join channel request for Manufacturer completed. ################"


