FABRIC_PATH=/home/dongjun/p1034_swing/saficket/cryptonet/peer1
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp
export CORE_PEER_ADDRESS=peer1:7051
peer channel join -b ch1.block
