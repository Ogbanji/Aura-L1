# Consensus Overview

AURA-L1 implements a modular Proof-of-Stake (PoS) consensus model
designed for high throughput, predictable finality, and community ownership.

The consensus layer is intentionally designed as a replaceable module,
allowing future upgrades without disrupting the execution or state layers.

## Design Goals
- Fast block finality
- Deterministic leader rotation
- Validator accountability
- Simple and auditable logic

## Validator Set
Validators are registered through the governance module.
Each validator stakes a minimum amount defined by chain parameters.

## Committee Selection
- Validators are grouped into rotating committees
- Committees are selected based on stake-weighted randomness
- Rotation occurs at fixed epoch boundaries

## Block Proposal Flow
1. Leader is selected for the current slot
2. Leader proposes a block
3. Committee members validate the block
4. Votes are collected
5. Block is finalized upon quorum

## Finality
Finality is achieved once a supermajority of the committee
signs the block. Finalized blocks cannot be reverted.

## Slashing (Planned)
The current implementation includes a slashing interface.
Future versions will penalize:
- Double signing
- Invalid block proposals
- Extended downtime

## Upgrade Path
Consensus rules are governed by on-chain governance and
can be upgraded through approved proposals.
