echo
echo "############# Channel Info ##################"
if [ -z $1 ]; then
   echo "Please pass the peer info"
	echo
	exit 1
fi

peer=$1
echo "Peer: '$peer'"
curl -s -X GET \
  http://localhost:3001/channels?peer=$peer \-H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQGlybS5jb20iLCJvcmdOYW1lIjoiQ3VzdG9kaWFuIiwiaWF0IjoxNTgxNDMwNjkyfQ.h63ml056VVgIUdvr_7MkLI09CghO0I89xyvjt7xG0fQ" \
  -H "content-type: application/json" \
echo
echo "############# Channel Info request completed. ################"