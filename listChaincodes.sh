echo
echo "############# Chaincode Listing ##################"
if [ -z $1 ]; then
   echo "Please pass the peer info"
	echo
	exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the channel info"
	echo
	exit 1
fi
if [ -z $3 ]; then
   echo "Please pass the chaincode type"
	echo
	exit 1
fi

peer=$1
channelName=$2
ccType=$3
echo "Peer: '$peer', Channel: '$channelName', Type: '$ccType'"
curl -s -X GET \
  http://localhost:3001/chaincodes/$peer/$channelName/$ccType \-H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAxIiwib3JnTmFtZSI6IkFydEhhbmRsZXIiLCJpYXQiOjE1ODE0MTY3MDZ9.gstIDOFZ9_X0BCmVpt06P_MzBqttFoF35OpHs_yD6vI" \
  -H "content-type: application/json" \
echo
echo "############# Channel Info request completed. ################"