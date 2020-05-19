echo
echo "############# Channel Info ##################"
if [ -z $1 ]; then
   echo "Please pass the channel name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the peer info"
	echo
	exit 1
fi
channelName=$1
peerName=$2

echo "channel name: "$channelName
echo "peer name : "$peerName
curl -s -X GET \
  http://localhost:3001/channels/$channelName?peer=$peerName \-H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImpvaG5AaXJvbm1vdW50YWluLmNvbSIsIm9yZ05hbWUiOiJPcmcxIiwiaWF0IjoxNTM2Mjk5NjI5fQ.7LVmDdQbfY_C9GYdkeWjuqXq2UKQbvocG2G-GAlkjHA" \
  -H "content-type: application/json" \
echo
echo "############# Channel Info request completed. ################"