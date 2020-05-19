echo
echo "############ Instantiate chaincode request ############ "
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
   echo "Please pass the channel name"
	echo
	exit 1
fi
chaincodeName=$1
chaincodeVersion=$2
channelName=$3
echo "chaincode name: "$chaincodeName
echo "chaincode version: "$chaincodeVersion
curl -s -X POST \
  http://localhost:3001/channels/$channelName/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQGlybS5jb20iLCJvcmdOYW1lIjoiQ3VzdG9kaWFuIiwiaWF0IjoxNTgxNTkyODYyfQ.K-Kz4UyIBpFVvgDZxJGVzpVktHHL_HU_mjTMMHQ9r0o" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Student.prime.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodeVersion":"'$chaincodeVersion'",
                "chaincodeType": "golang",
                "args":[]
}'
echo
echo "############ Instantiate chaincode request completed.############ "



