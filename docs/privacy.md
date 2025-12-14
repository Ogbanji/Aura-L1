# Privacy Architecture

AURA-L1 is designed with a privacy-oriented architecture that focuses on
protecting transaction data at the transaction submission and mempool layers.
Privacy is implemented in a modular way, allowing cryptographic components to
evolve independently without tightly coupling them to the core execution engine.

The current design prioritizes confidentiality of transaction contents while
preserving performance, composability, and compatibility with Avalanche Subnets.

---

## Privacy Design Principles

- **Opt-in privacy model**  
  Privacy mechanisms are designed to be optional and configurable at the
  transaction level.

- **No global trusted setup assumption**  
  The core protocol does not rely on a mandatory global trusted setup.

- **Pluggable cryptography**  
  Cryptographic primitives are abstracted behind interfaces to allow future
  upgrades or replacements.

---

## Encrypted Transactions

Transactions are wrapped in an encrypted container before entering the mempool.
The encrypted payload is only intended to be decrypted by authorized execution
logic during block processing.

This design limits the exposure of sensitive transaction data during gossip and
temporary storage.

---

## Encrypted Mempool

The mempool is designed to handle encrypted transaction payloads:

- Transactions are stored in encrypted form
- Validators are not intended to directly inspect transaction contents
- Transaction ordering relies on non-sensitive metadata rather than decrypted
  payload data

This approach reduces the risk of mempool-level data leakage while maintaining
basic transaction propagation functionality.

---

## Stealth Addresses

AURA-L1 supports stealth address derivation mechanisms that allow recipients to
publish a single public identifier while receiving funds through unlinkable,
one-time addresses.

This reduces address reuse and limits direct linkage between sender and receiver
addresses at the protocol level.

---

## Zero-Knowledge Integration Interface

The protocol exposes a generic interface for integrating zero-knowledge proof
systems, including but not limited to:

- Transaction validity proofs
- Confidential value transfers
- Future rollup or execution-layer extensions

Zero-knowledge systems are not hard-coded into the runtime and are expected to
be integrated as modular components as the protocol evolves.

---

## Threat Model

The current privacy architecture is designed to mitigate:

- Mempool transaction snooping
- Basic transaction graph analysis

The protocol does not attempt to conceal validator identities, network topology,
or consensus participation.
