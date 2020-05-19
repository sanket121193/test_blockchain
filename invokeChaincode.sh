echo
echo "############ Invoke chaincode request #############"
if [ -z $1 ]; then
   echo "Please pass the channel name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the chaincode name"
	echo
	exit 1
fi
if [ -z $3 ]; then
   echo "Please pass the chaincode function name"
	echo
	exit 1
fi
channelName=$1
chaincodeName=$2
functionName=$3
echo "channel name: "$channelName
echo "chaincode name: "$chaincodeName
echo "chaincode function name: "$functionName
curl -s -X POST \
  http://localhost:3001/channels/$channelName/chaincodes/$chaincodeName \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyIiwib3JnTmFtZSI6IkN1c3RvZGlhbiIsImlhdCI6MTU4MTY4OTE5N30.7Rjj0BgO-ep9sZbC8y1DHF9BgQisEAdc3aO-fQxK4Mw" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Student.prime.com"],
                "fcn":"'$functionName'",
               "args":["ashin"]
}'
echo
echo "############ Invoke chaincode request completed.#############"