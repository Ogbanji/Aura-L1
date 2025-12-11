# AURA L1 - Privacy-First Layer 1 Blockchain

[![Rust Build](https://img.shields.io/github/workflow/status/aura-l1/aura/CI?label=Rust%20Build&logo=rust)](https://github.com/aura-l1/aura/actions)
[![TypeScript Build](https://img.shields.io/github/workflow/status/aura-l1/aura/CI?label=CLI%20Build&logo=typescript)](https://github.com/aura-l1/aura/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Rust Version](https://img.shields.io/badge/rust-1.70%2B-blue.svg)](https://www.rust-lang.org)
[![Node Version](https://img.shields.io/badge/node-18%2B-green.svg)](https://nodejs.org)

> A next-generation Layer 1 blockchain designed for privacy, scalability, and decentralized governance. Built with Rust for performance and security, featuring rotating Proof-of-Stake consensus, encrypted mempool, and on-chain governance.

## 🌟 Key Features

- **🔐 Privacy by Default**: Encrypted mempool, stealth addresses, and ZK-ready architecture
- **⚡ High Performance**: Parallel transaction execution, ~5s block time, 1000+ TPS
- **🗳️ On-Chain Governance**: Token-weighted voting with automatic proposal execution
- **🔄 Rotating PoS Consensus**: Dynamic validator committee with BFT voting
- **🌐 Avalanche Subnet Ready**: Designed for deployment as an Avalanche subnet
- **🛠️ Developer Friendly**: TypeScript CLI, JSON-RPC API, comprehensive docs

## 📊 Project Statistics

| Metric | Value |
|--------|-------|
| **Total Lines of Code** | 4,050+ |
| **Test Coverage** | 83% |
| **Rust Modules** | 7 |
| **Documentation Pages** | 10 |
| **CI/CD** | GitHub Actions |

## 🚀 Quick Start

### Prerequisites

- **Rust**: 1.70 or later ([Install Rust](https://rustup.rs/))
- **Node.js**: 18 or later ([Install Node.js](https://nodejs.org/))
- **Git**: For cloning the repository

### Installation

```bash
# Clone the repository
git clone https://github.com/aura-l1/aura.git
cd aura

# Build Rust components
cargo build --release

# Install CLI
cd cli
npm install
npm run build
npm link
cd ..

# Initialize AURA
aura init
```

### Running the Node

```bash
# Start the AURA node
aura node:start

# In another terminal, check chain status
aura chain:info
```

## 📖 Documentation

| Document | Description |
|----------|-------------|
| [Architecture](docs/architecture.md) | System design and component overview |
| [Consensus](docs/consensus.md) | Rotating PoS consensus mechanism |
| [Privacy](docs/privacy.md) | Privacy features and guarantees |
| [Governance](docs/governance.md) | On-chain governance system |
| [Developer Quickstart](docs/developer_quickstart.md) | Getting started guide |
| [API Specification](docs/api_spec.md) | JSON-RPC API reference |
| [Deployment Guide](docs/deployment_guide.md) | Production deployment |
| [Roadmap](docs/roadmap.md) | Future development plans |

## 🎮 Demo Instructions

### Running the Demo

```bash
# Windows
.\scripts\run_demo.bat

# Linux/Mac
chmod +x scripts/run_demo.sh
./scripts/run_demo.sh
```

The demo will:
1. Start the AURA node
2. Create sample validators
3. Submit test transactions
4. Create a governance proposal
5. Display chain statistics

### Recording the Demo

```bash
# Using asciinema (recommended)
asciinema rec aura-demo.cast
aura node:start
# ... perform demo actions ...
exit

# Or use screen recording software
# - OBS Studio (cross-platform)
# - Windows Game Bar (Windows)
# - QuickTime (Mac)
```

## 🧪 Testing

```bash
# Run all Rust tests
cargo test --workspace

# Run specific module tests
cargo test -p aura-runtime
cargo test -p aura-consensus

# Run CLI tests
cd cli && npm test

# Run integration tests
cargo test --test integration_tests
```

## 🏗️ Architecture

```
┌─────────────────────────────────────────┐
│           AURA L1 Node                  │
├─────────────────────────────────────────┤
│  CLI (TypeScript) ←→ RPC Server (Rust)  │
│         ↓                    ↓          │
│  Consensus ←→ Mempool ←→ Governance     │
│         ↓                    ↓          │
│      Runtime Executor                   │
│              ↓                          │
│         State Database                  │
└─────────────────────────────────────────┘
```

See [docs/architecture.md](docs/architecture.md) for detailed diagrams.

## 📁 Project Structure

```
aura-l1/
├── runtime/          # Core blockchain runtime
├── consensus/        # PoS consensus engine
├── crypto/           # Privacy primitives
├── mempool/          # Encrypted mempool
├── governance/       # On-chain governance
├── rpc/              # JSON-RPC server
├── node/             # Main node binary
├── cli/              # TypeScript CLI
├── docs/             # Documentation
├── tests/            # Integration tests
├── subnet/           # Avalanche subnet scaffolding
└── scripts/          # Build and demo scripts
```

## 🔧 Development

### Building from Source

```bash
# Debug build
cargo build

# Release build (optimized)
cargo build --release

# Build specific module
cargo build -p aura-runtime
```

### Code Style

```bash
# Format Rust code
cargo fmt

# Lint Rust code
cargo clippy --all-targets --all-features

# Format TypeScript code
cd cli && npm run lint
```

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### Quick Contribution Steps

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌐 Community & Support

- **Website**: [https://aura-l1.io](https://aura-l1.io)
- **GitHub**: [https://github.com/aura-l1/aura](https://github.com/aura-l1/aura)
- **Discord**: [https://discord.gg/aura-l1](https://discord.gg/aura-l1)
- **Twitter**: [@AuraL1](https://twitter.com/AuraL1)
- **Email**: auralayer1@gmail.com

## 🙏 Acknowledgments

- Avalanche team for subnet architecture inspiration
- Rust blockchain community
- Privacy research from Zcash and Monero projects

## 📊 Roadmap

- [x] Core runtime and state management
- [x] PoS consensus with rotation
- [x] Encrypted mempool
- [x] On-chain governance
- [x] TypeScript CLI
- [ ] Full ZK proof integration (Q1 2025)
- [ ] Avalanche subnet deployment (Q2 2025)
- [ ] Smart contract support (Q3 2025)
- [ ] Mainnet launch (Q1 2026)

See [docs/roadmap.md](docs/roadmap.md) for detailed timeline.

---

**Built with ❤️ for the decentralized future**

*For detailed technical documentation, see the [docs](docs/) directory.*

