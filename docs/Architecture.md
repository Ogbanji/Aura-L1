# Fanora L1 Architecture Overview
**Last Updated: December 2025**

Fanora L1 is a privacy-focused, compliance-ready Layer-1 blockchain built as an Avalanche Subnet. The architecture is modular, enabling independent evolution of runtime, consensus, crypto, governance, and CLI components while maintaining interoperability with the Avalanche ecosystem.

## Key Components:
- **Runtime Module:** Handles state transitions, block creation, and transaction processing.
- **Consensus Module:** Snowman-style permissioned consensus ensuring validator finality and chain security.
- **Crypto Module:** Stealth addresses, encrypted transactions, and cryptographic primitives.
- **Governance Module:** On-chain proposals, voting, freeze/pause hooks.
- **Mempool:** Encrypted transaction queue with ordering for privacy and efficiency.
- **CLI/SDK:** Node management, transaction dispatch, governance interaction.

## Data Flow:
1. Transactions are created via CLI or SDK.
2. Transactions enter the encrypted mempool.
3. Validators process blocks via consensus module.
4. Governance hooks allow on-chain control for updates.
5. Blocks are appended to the chain, maintaining privacy and compliance.
