echo "############ GetBlock By Transaction request #############"
if [ -z $1 ]; then
   echo "Please pass the channel name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the transaction Id"
	echo
	exit 1
fi

channelName=$1
transId=$2

echo "channel name: "$channelName
echo "Trans Id: "$transId

curl -s -X GET http://localhost:4000/channels/$channelName/block/$transId?peer=peer0.org1.example.com \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InN1c21pdCIsIm9yZ05hbWUiOiJPcmcxIiwiaWF0IjoxNTM1NjEyMzM4fQ.BaICgRwDq0wlFERDGRpwGNinSsCs_1viGOIOXwr9SNw" \
  -H "content-type: application/json"
echo "############ Invoke chaincode request completed.#############"