# Change Log

This file contains a centralizes a trace of all published crate versions, with their changes in short.

## [dharitri-vm-executor 1.0.3] - 2024-11-14
- Spica release.
- EI v1.4 new hooks:
    - isReservedFunctionName
    - managedGetOriginalCallerAddr
    - managedGetRelayerAddr
    - managedMultiTransferDCDTNFTExecuteByUser
    - managedVerifySecp256r1
    - managedVerifyBLSSignatureShare
    - managedVerifyBLSAggregatedSignature

## [dharitri-vm-executor 1.0.2] - 2023-10-12
- New VM hook: `managedGetBackTransfers`.
- Memory fix.

## [dharitri-vm-executor 1.0.1] - 2023-06-15
This is the initial official release of the VM executor interface. The purpose is for it to be used in the new smart contract debugger architecture.

It targets VM 1.5 and integrates the Wasmer 2.2 implementation.
