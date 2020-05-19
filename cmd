../bin/configtxgen -configPath . -profile FourOrgsOrdererGenesis -channelID byfn-sys-channel -outputBlock ./channel-artifacts/genesis.block

 

../bin/configtxgen -configPath . -profile FourOrgsChannel -outputCreateChannelTx ./channel-artifacts/primechannel.tx -channelID $CHANNEL_NAME
../bin/configtxgen -configPath . -profile FourOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/AdminTeamMSPanchors.tx -channelID $CHANNEL_NAME -asOrg AdminTeamMSP
../bin/configtxgen -configPath . -profile FourOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/EmployerMSPanchors.tx -channelID $CHANNEL_NAME -asOrg EmployerMSP
../bin/configtxgen -configPath . -profile FourOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/UniversityMSPanchors.tx -channelID $CHANNEL_NAME -asOrg UniversityMSP
../bin/configtxgen -configPath . -profile FourOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/StudentMSPanchors.tx -channelID $CHANNEL_NAME -asOrg StudentMSP





POST request Enroll on AdminTeam...
{"success":true,"secret":"","message":"a0001@prime.com enrolled Successfully","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAxQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJBZG1pblRlYW0iLCJpYXQiOjE1ODYxODI5MzJ9.Wd1SUlFjOOe2Y4g0RZ-y255Sgo73QPozTKg1vc_6um0"}POST request Enroll on AdminTeam... completed.

POST request Enroll on Student...
{"success":true,"secret":"","message":"a0002@prime.com enrolled Successfully","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJTdHVkZW50IiwiaWF0IjoxNTg2MTgyOTMzfQ.T-pf_ZFBkIl85hcmENId_hCC5WTVKvMD9EHRfTyegsQ"}POST request Enroll on Student... completed.

POST request Enroll on Employer...
{"success":true,"secret":"","message":"a0003@prime.com enrolled Successfully","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAzQHByaW1lLmNvbSIsIm9yZ05hbWUiOiJFbXBsb3llciIsImlhdCI6MTU4NjE4MjkzM30.AZ_FXH6UUt742yRMMVnLlxbYBaQp5LYKzuIhlj4J7XY"}POST request Enroll on Employer... completed.

POST request Enroll on University...
{"success":true,"secret":"","message":"a0004@prime.com enrolled Successfully","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA0QHByaW1lLmNvbSIsIm9yZ05hbWUiOiJVbml2ZXJzaXR5IiwiaWF0IjoxNTg2MTgyOTMzfQ.8XEBPBs8dF3iy-LpNMle1pleHa6LFYlp0H8HVebtljs"}POST request Enroll on University... completed.

