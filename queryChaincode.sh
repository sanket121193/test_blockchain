echo "###################### Chaincode Query request"######################"
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
curl -s -X GET \
  "http://localhost:3001/channels/$channelName/chaincodes/$chaincodeName?peer=peer0.org1.example.com&fcn=$functionName&args=%5B%22a%22%5D" \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDJAaXJtLmNvbSIsIm9yZ05hbWUiOiJDdXN0b2RpYW4iLCJpYXQiOjE1NzI1MzQ0NTh9.iEERQtWFC_5A3FtrvAHUP6pv_bOLO1ZLsrWazaub9Cc" \
  -H "content-type: application/json"

echo "###################### Chaincode Query request completed."######################"