echo 
echo "############ Install chaincode ############ "
if [ -z $1 ]; then
   echo "Please pass the chaincode name"
   echo
   exit 1
fi
if [ -z $2 ]; then
   echo "Please pass the chaincode version"
	echo
	exit 1
fi
if [ -z $3 ]; then
   echo "Please pass the chaincode folder"
	echo
	exit 1
fi
chaincodeName=$1
chaincodeVersion=$2
chaincodeFolder=$3
echo "chaincode name: "$chaincodeName
echo "chaincode version: "$chaincodeVersion
echo "chaincode folder: "$chaincodeFolder
curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAxQGlybS5jb20iLCJvcmdOYW1lIjoiQXJ0SGFuZGxlciIsImlhdCI6MTU4MTU5Mjg2MX0._vhlrFBSPAsMX2pcYhgIrC7eplqcN_aWx1l79uEzkbE" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.AdminTeam.prime.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for AdminTeam ############ "


curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAyQGlybS5jb20iLCJvcmdOYW1lIjoiQ3VzdG9kaWFuIiwiaWF0IjoxNTgxNTkyODYyfQ.K-Kz4UyIBpFVvgDZxJGVzpVktHHL_HU_mjTMMHQ9r0o" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Student.prime.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for Student ############ "



curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDAzQGlybS5jb20iLCJvcmdOYW1lIjoiSW5zdXJlciIsImlhdCI6MTU4MTU5Mjg2M30.y-2vD6vogfflDIgoboJrXfp4OhT_t6IzKhq3ukyYlPc" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.Employer.prime.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for Employer ############ "


curl -s -X POST \
  http://localhost:3001/chaincodes \
  -H "authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImEwMDA0QGlybS5jb20iLCJvcmdOYW1lIjoiTXVzZXVtIiwiaWF0IjoxNTgxNTkyODYzfQ.P5j6O3xMp3Ln_yCbORBg5LNIo2JY3np_AxYq2DXAIZw" \
  -H "content-type: application/json" \
  -d '{
                "peers": ["peer0.University.prime.com"],
                "chaincodeName":"'$chaincodeName'",
                "chaincodePath":"github.com/'$chaincodeFolder'/go",
                "chaincodeType": "golang",
                "chaincodeVersion":"'$chaincodeVersion'"
}'
echo 
echo "############ Install chaincode completed for University ############ "





