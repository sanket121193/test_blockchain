echo "========================================================================"
echo "Installing Hyperledger "
echo "========================================================================"
cd /home/dayalmukati/MentorChief/hlf-prime-setup/scripts/
./bootstrap-1-4.sh -s
echo "========================================================================"
echo "===> Moving bin and config folder"
echo "========================================================================"
rm -rf /home/dayalmukati/MentorChief/hlf-prime-setup/bin
rm -rf /home/dayalmukati/MentorChief/hlf-prime-setup/config
mv bin /home/dayalmukati/MentorChief/hlf-prime-setup
mv config /home/dayalmukati/MentorChief/hlf-prime-setup

echo "========================================================================"
echo "Hyperledger Installed"
echo "========================================================================"

echo "========================================================================"
echo "Adding Path to Profile Start"
echo "========================================================================"
export PATH=/home/dayalmukati/MentorChief/hlf-prime-setup/bin:$PATH
echo "export PATH=/home/dayalmukati/MentorChief/hlf-prime-setup/bin:$PATH" >> ~/.profile
source ~/.profile

CC_SRC_PATH="github.com/chaincode/chaincode_example02/go/"


export FABRIC_CFG_PATH=/home/dayalmukati/MentorChief/hlf-prime-setup/artifacts
echo "export FABRIC_CFG_PATH=/home/dayalmukati/MentorChief/hlf-prime-setup" >> ~/.profile
source ~/.profile

echo "export FABRIC_CFG_PATH=/home/dayalmukati/MentorChief/hlf-prime-setup" >> ~/.profile
source ~/.profile

echo "========================================================================"
echo "Adding Path to Profile completed"
echo "========================================================================"