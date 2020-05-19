echo
echo "############### Create channel request ###############"
export FABRIC_CFG_PATH=/home/dayalmukati/MentorChief/hlf-prime-setup/artifacts/channel
/home/dayalmukati/MentorChief/hlf-prime-setup/bin/configtxgen -profile FourOrgsChannel -outputCreateChannelTx /home/dayalmukati/MentorChief/hlf-prime-setup/artifacts/channel/primechannel.tx -channelID primechannel
echo "Create channel by using the transaction..."
curl -s -X POST \http://localhost:3001/channels \-H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAxQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJBZG1pblRlYW0iLCJpYXQiOjE1ODYxODI5MzJ9.Wd1SUlFjOOe2Y4g0RZ-y255Sgo73QPozTKg1vc_6um0" \
  -H "content-type: application/json" \
  -d '{
                "channelName":"primechannel",
                "channelConfigPath":"../artifacts/channel/primechannel.tx"
}'
echo
echo "############### Create channel request completed. #################"