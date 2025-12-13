# AURA-L1: Privacy-First Avalanche Subnet Framework

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://github.com/aura-l1/aura-l1/actions/workflows/ci.yml/badge.svg)](https://github.com/aura-l1/aura-l1/actions/workflows/ci.yml)
[![Rust](https://img.shields.io/badge/rust-1.75%2B-orange.svg)](https://www.rust-lang.org)
[![TypeScript](https://img.shields.io/badge/typescript-5.0%2B-blue.svg)](https://www.typescriptlang.org/)

## 🚀 Overview

**AURA-L1** is a next-generation, privacy-first, high-performance Layer-1 blockchain framework designed to deploy seamlessly as an **Avalanche Subnet**.

Unlike traditional EVM subnets that expose all data publicly, AURA-L1 integrates **native zero-knowledge (ZK) privacy primitives** and **encrypted state pools** directly into the runtime. This allows for:
- **Confidential Transactions**: Transfer assets without revealing amounts or sender/receiver relationships.
- **Stealth Addressing**: Native support for one-time addresses to preserve identity.
- **High Throughput**: Optimized Rust-based runtime utilizing Avalanche's consensus engine for sub-second finality.

AURA-L1 is not just a chain; it is a **framework** for communities to launch their own privacy-preserving, sovereign economies on the Avalanche network.

## 🌟 Key Features

*   **Privacy-First Architecture**: Built from the ground up with encrypted mempools and ZK-proof verification.
*   **Avalanche Subnet Native**: Designed to run as a custom VM (Virtual Machine) on Avalanche, inheriting its consensus speed and validator infrastructure.
*   **Rust Runtime**: High-performance execution engine, free from legacy EVM overhead.
*   **Governance-Driven**: Built-in on-chain governance for parameter updates and validator set management.
*   **Developer Friendly**: Full TypeScript CLI and SDK for node management and transaction dispatch.

## 📂 Repository Structure

```text
aura-l1/
├── runtime/      # Core blockchain state transition logic (Rust)
├── consensus/    # Consensus adapter and committee management (Rust)
├── crypto/       # Cryptographic primitives (ZK, Stealth, Encryption) (Rust)
├── mempool/      # Encrypted transaction pool (Rust)
├── governance/   # On-chain governance and validator logic (Rust)
├── cli/          # Developer and User CLI (TypeScript)
├── subnet/       # Avalanche VM integration stubs
├── docs/         # Detailed architectural documentation
└── tests/        # Integration tests and scenarios
```

## 🛠️ Installation & Quick Start

### Prerequisites
- **Rust**: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- **Node.js**: v18+ & **pnpm** or **npm**
- **AvalancheGo**: (Optional, for local subnet testing)

### Build the Project
```bash
# Build Rust Crates
cargo build --release

# Install CLI
cd cli
npm install
npm run build
npm link
```

## 🎮 Demo

**1. Initialize the Chain**
```bash
aura init --network local
```

**2. Start a Local Node**
```bash
aura node:start
```

**3. Send a Secure Transaction**
```bash
aura tx:send --to <STEALTH_ADDR> --amount 100 --privacy high
```

## 📜 Documentation

Detailed documentation is available in the `/docs` directory:
- [Architecture Overview](docs/architecture.md)
- [Consensus Mechanism](docs/consensus.md)
- [Privacy System](docs/privacy.md)
- [Developer Quickstart](docs/developer_quickstart.md)

## ✅ Submission Checklist

- [x] Runtime Architecture (State, Blocks, Tx)
- [x] Consensus Rotation Logic (Mock PoS)
- [x] Cryptographic Primitives (Encryption, ZK Stubs)
- [x] Encrypted Mempool
- [x] Governance Module
- [x] TypeScript CLI
- [x] Documentation & Roadmaps

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
