FABRIC_PATH=/home/anstjaos/MyProjects/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer3:7051
peer chaincode install -n testnetCC -v 1.0 -p github.com/hyperledger/fabric/examples/chaincode/go/example02/cmd
