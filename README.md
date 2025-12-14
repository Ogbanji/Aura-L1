# AURA-L1: A Privacy-Focused Avalanche Subnet Framework

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Build Status](https://github.com/aura-l1/aura-l1/actions/workflows/ci.yml/badge.svg)](https://github.com/aura-l1/aura-l1/actions/workflows/ci.yml)
[![Rust](https://img.shields.io/badge/rust-1.75%2B-orange.svg)](https://www.rust-lang.org)
[![TypeScript](https://img.shields.io/badge/typescript-5.0%2B-blue.svg)](https://www.typescriptlang.org/)

## 🚀 Overview

**AURA-L1** AURA-L1 is a privacy-focused Layer-1 blockchain framework designed to operate
as a sovereign Avalanche Subnet.

Unlike traditional EVM-based subnets, AURA-L1 explores a custom Rust-based
execution runtime with support for encrypted transaction flows and
privacy-oriented primitives.

The project focuses on modular design, allowing privacy, governance,
and execution components to evolve independently while remaining compatible
with the Avalanche ecosystem.

### Core Value Proposition
- **Native Privacy**: Transactions are encrypted by default using ZK-SNARKs (Plonk) and Stealth Addressing (Elliptic Curve functionality).
- **Subnet Performance**: Inherits sub-second finality and infinite scalability from the Avalanche Snowman consensus protocol.
- **Sovereign Governance**: Built-in on-chain governance allows the community to manage validator sets and protocol parameters.

## 🌟 Key Features

*   **Encrypted State Pools**: Account balances and transaction history are shielded from public view using homomorphic encryption techniques.
*   **Stealth Addressing**: Automatically generates one-time addresses for every transaction, breaking the link between sender and receiver.
*   **Rust-Based Runtime**: A clean-slate execution environment free from legacy EVM overhead, maximizing throughput and reducing state bloat.
*   **Compliance Hooks**: Optional view keys allow users to reveal transaction history to auditors or regulators selectively.
*   **Developer CLI**: A comprehensive TypeScript CLI for node operation, key management, and transaction dispatch.

## 📂 Repository Structure

```text
aura-l1/
├── runtime/      # Core state transition logic and WASM execution environment (Rust)
├── consensus/    # Snowman consensus engine adapter (Rust)
├── crypto/       # ZK proofs, Schnorr signatures, and Homomorphic Encryption (Rust)
├── mempool/      # Encrypted transaction gossip and ordering (Rust)
├── governance/   # On-chain proposal and voting mechanisms (Rust)
├── cli/          # Developer CLI and SDK (TypeScript)
├── subnet/       # AvalancheGo plugin definitions and VM specs
├── docs/         # Architectural specifications and protocol design
└── tests/        # End-to-end integration scenarios
```

## 🛠️ Installation & Quick Start

### Prerequisites
- **Rust**: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- **Node.js**: v18+ & **pnpm** or **npm**
- **AvalancheGo**: (Optional, for local network simulation)

### 1. Build the Rust Runtime
```bash
cargo build --release
```

### 2. Install the CLI
```bash
cd cli
npm install
npm run build
npm link
```

## 🎮 Usage Guide

**1. Initialize a Local Chain**
Create a new genesis configuration and validator set.
```bash
aura init --network local --chain-id 9999
```

**2. Start the Node**
Launch the local daemon to begin producing blocks.
```bash
aura node:start
```

**3. Inspect Chain Status**
View the current height, active validators, and network information.
```bash
aura chain:info
```

**4. Send a Private Transaction**
Dispatch a transaction with privacy protections enabled.
```bash
# Sends 100 AURA using a stealth address derivation
aura tx:send --to <RECIPIENT_PUBKEY> --amount 100 --privacy max
```

## 📜 Documentation

Detailed technical specifications can be found in the `/docs` directory:

- [**Architecture Overview**](docs/architecture.md): System components and data flow.
- [**Consensus Mechanism**](docs/consensus.md): Adaptation of the Snowman consensus protocol.
- [**Privacy Primitives**](docs/privacy.md): Deep dive into ZK-SNARKs and Stealth Addresses.
- [**Governance Model**](docs/governance.md): Proposal lifecycles and voting logic.
- [**Roadmap**](docs/roadmap.md): Future development milestones.

## ✅ Development Status

- [x] **Runtime**: Basic State Transition & Block Execution
- [x] **Crypto**: Schnorr Signatures & Stealth Address Generation
- [x] **Consensus**: Mock Consensus Rotation (Snowman Integration in progress)
- [x] **CLI**: Full Node Management & Transaction Dispatch
- [x] **Mempool**: Naive FIFO Ordering (Priority Queue pending)
- [ ] **ZK Circuits**: Trusted Setup & Prover Integration (Phase 2)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

