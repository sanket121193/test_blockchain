echo
echo "############ GetBlock By Block Id request #############"
if [ -z $1 ]; then
   echo "Please pass the channel name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the block number"
	echo
	exit 1
fi

channelName=$1
blockNo=$2

echo "channel name: "$channelName
echo "Block No. : "$blockNo

curl -s -X GET http://localhost:3001/channels/$channelName/blocks/$blockNo?peer=peer0.AdminTeam.prime.com \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IndpbHNvbkBpcm9ubW91bnRhaW4uY29tIiwib3JnTmFtZSI6Ik9yZzEiLCJpYXQiOjE1MzU5Njk2MjZ9.-q_Q1xm0oiZ0Sbfj3XLc2sFvv4Op2bFbYKRv5CM4Oq8" \
  -H "content-type: application/json"

echo
echo "############ GetBlock By Block Id request completed.#############"