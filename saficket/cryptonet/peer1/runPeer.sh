#!/bin/bash
# arg1 <= The number of Org
# arg2 <= The number of peer

help()
{
    echo "Usage: $0 [org] [peer]"
}


if [ $# -ne 2 ]
then
    help
    exit 0
fi

FABRIC_PATH=/home/dongjun/p1034_swing/saficket/cryptonet/$HOSTNAME
echo $FABRIC_PATH

CORE_PEER_ENDORSER_ENABLED=true \
CORE_PEER_ADDRESS=peer$2:7051 \
CORE_PEER_CHAINCODELISTENADDRESS=peer$2:7052 \
CORE_PEER_ID=org$1-peer$2 \
CORE_PEER_LOCALMSPID=Org$1MSP \
CORE_PEER_GOSSIP_EXTERNALENDPOINT=peer$2:7051 \
CORE_PEER_GOSSIP_USELEADERELECTION=true \
CORE_PEER_GOSSIP_ORGLEADER=false \
CORE_PEER_TLS_ENABLED=false \
CORE_PEER_TLS_KEY_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org$1/peers/peer$2.org$1/tls/server.key \
CORE_PEER_TLS_CERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org$1/peers/peer$2.org$1/tls/server.crt \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org$1/peers/peer$2.org$1/tls/ca.crt \
CORE_PEER_TLS_SERVERHOSTOVERRIDE=peer$2 \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org$1/peers/peer$2.org$1/msp \
/home/dongjun/p1034_swing/saficket/src/github.com/hyperledger/fabric/.build/bin/peer node start
