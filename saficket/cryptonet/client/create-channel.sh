FABRIC_PATH=/home/dongjun/p1034_swing/saficket/cryptonet/client

echo $FABRIC_PATH



CORE_PEER_LOCALMSPID="Org0MSP" \

CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer0.org0/tls/ca.crt \

CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp \

CORE_PEER_ADDRESS=peer0:7051 \

peer channel create -o orderer:7050 -c ch1 -f ch1.tx
