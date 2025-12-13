# Privacy Architecture

AURA-L1 is designed as a privacy-first Layer 1.
Privacy is implemented at the transaction and mempool layers,
without sacrificing performance or composability.

## Privacy Principles
- Optional privacy by default
- No global trusted setup
- Pluggable cryptography

## Encrypted Transactions
Transactions are wrapped in an encrypted container before
entering the mempool. Only authorized execution logic can
decrypt and process them.

## Encrypted Mempool
- Transactions are stored encrypted
- Validators cannot inspect transaction contents
- Ordering is based on metadata, not payload

## Stealth Addresses
AURA-L1 supports stealth address generation, allowing receivers
to publish one address while receiving funds privately.

## Zero-Knowledge Interface
The protocol exposes an interface for integrating ZK proofs:
- Validity proofs
- Confidential transfers
- Future rollup compatibility

ZK systems are not hard-coded and can be swapped or upgraded.

## Threat Model
- Protects against mempool snooping
- Protects transaction graph analysis
- Does not attempt to hide validator identities
