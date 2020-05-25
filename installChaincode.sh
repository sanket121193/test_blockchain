echo 
echo "############ Install chaincode ############ "
if [ -z $1 ]; then
   echo "Please pass the chaincode name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the chaincode version"
	echo
	exit 1
fi
if [ -z $3 ]; then
   echo "Please pass the chaincode folder"
	echo
	exit 1
fi
chaincodeName=$1
chaincodeVersion=$2
chaincodeFolder=$3
echo "chaincode name: "$chaincodeName
echo "chaincode version: "$chaincodeVersion
echo "chaincode folder: "$chaincodeFolder
curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA1QGxpcXVvci5jb20iLCJvcmdOYW1lIjoiTWFudWZhY3R1cmVyIiwiaWF0IjoxNTkwMjEzMTMwfQ.WOYbZQZAtcad0I2lx6DYQR1AqHKahZa6yCoY5iVlEVU" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Manufacturer.liquor.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for AdminTeam ############ "


curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA0QGxpcXVvci5jb20iLCJvcmdOYW1lIjoiQWRtaW5UZWFtIiwiaWF0IjoxNTkwMjEzMTI5fQ.lD7RfihWwy951bulQVgIFjspbhglCxA6wce5cW4KJ0o" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.AdminTeam.liquor.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for Manufacturer ############ "





