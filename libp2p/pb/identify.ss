#lang :std/protobuf/proto ; -*- Protobuf -*-

syntax = "proto2";

package identify.pb;

message Identify {

  // protocolVersion determines compatibility between peers
  optional string protocolVersion = 5; // e.g. ipfs/1.0.0

  // agentVersion is like a UserAgent string in browsers, or client version in bittorrent
  // includes the client name and client.
  optional string agentVersion = 6; // e.g. go-ipfs/0.1.0

  // publicKey is this node's public key (which also gives its node.ID)
  // - may not need to be sent, as secure channel implies it has been sent.
  // - then again, if we change / disable secure channel, may still want it.
  optional bytes publicKey = 1;

  // listenAddrs are the multiaddrs the sender node listens for open connections on
  repeated bytes listenAddrs = 2;

  // oservedAddr is the multiaddr of the remote endpoint that the sender node perceives
  // this is useful information to convey to the other side, as it helps the remote endpoint
  // determine whether its connection to the local peer goes through NAT.
  optional bytes observedAddr = 4;

  // protocols are the services this node is running
  repeated string protocols = 3;
}
