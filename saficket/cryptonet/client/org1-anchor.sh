FABRIC_PATH=/home/dongjun/p1034_swing/saficket/cryptonet/client
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org1/users/Admin@org1/msp
export CORE_PEER_ADDRESS=peer1:7051
peer channel create -o orderer:7050 -c ch1 -f Org1MSPanchors.tx
