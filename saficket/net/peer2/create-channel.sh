FABRIC_PATH=/home/dongjun/p1034_swing/saficket/net/peer2

echo $FABRIC_PATH



CORE_PEER_LOCALMSPID="Org1MSP" \

CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/tls/ca.crt \

CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org1/users/Admin@org1/msp \

CORE_PEER_ADDRESS=peer1:7051 \

/home/dongjun/p1034_swing/saficket/src/github.com/hyperledger/fabric/.build/bin/peer channel create -o orderer:7050 -c ch1 -f ch1.tx
