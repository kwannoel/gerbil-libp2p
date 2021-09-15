##
# Project Title
#
# @file
# @version 0.1

.PHONY: dial
dial:
	./example/libp2p-chat.ss dial /ip4/127.0.0.1/tcp/10333/ipfs/QmZXnUYvN5QVcneo2hnurLGjuaJ3X1dEZMQRbfKtewApBz  /ip4/0.0.0.0/tcp/10300

.PHONY: listen
listen:
	./example/libp2p-chat.ss listen /ip4/0.0.0.0/tcp/10333/

# end
