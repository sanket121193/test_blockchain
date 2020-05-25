#echo
#echo "############### Create channel request ###############"
#export FABRIC_CFG_PATH=/artifacts/channel
#/home/dayalmukati/MentorChief/hlf-liquor-setup/bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx /home/dayalmukati/MentorChief/hlf-prime-setup/artifacts/channel/liquorchannel.tx -channelID liquorchannel
echo "Create channel by using the transaction..."
curl -s -X POST \http://localhost:3001/channels \-H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA1QGxpcXVvci5jb20iLCJvcmdOYW1lIjoiTWFudWZhY3R1cmVyIiwiaWF0IjoxNTkwMjEzMTMwfQ.WOYbZQZAtcad0I2lx6DYQR1AqHKahZa6yCoY5iVlEVU" \
  -H "content-type: application/json" \
  -d '{
                "channelName":"liquorchannel",
                "channelConfigPath":"../artifacts/liquorchannel.tx"
}'
echo
echo "############### Create channel request completed. #################"
