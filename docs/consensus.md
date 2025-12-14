# Consensus Overview

AURA-L1 uses a modular Proof-of-Stake (PoS) consensus framework designed to
support predictable block finality, validator accountability, and future
upgradability.

The consensus layer is intentionally isolated from the execution and state
layers, allowing alternative consensus mechanisms or upgraded implementations
to be introduced without breaking core protocol logic.

---

## Design Goals

- Fast and predictable block confirmation
- Deterministic leader and committee rotation
- Validator accountability through governance controls
- Simple, auditable, and modular consensus logic

---

## Validator Set

Validators are registered and managed through the on-chain governance module.
Each validator is required to stake a minimum amount defined by configurable
chain parameters.

The active validator set may change over time based on governance decisions and
stake requirements.

---

## Committee Selection

Consensus participation is organized into rotating committees:

- Validators are grouped into committees on an epoch basis
- Committee selection is based on stake-weighted randomness
- Rotation occurs at fixed epoch boundaries to limit long-term leader dominance

This structure is intended to balance decentralization with predictable
performance.

---

## Block Proposal Flow

At a high level, block production follows this flow:

1. A leader is selected for the current slot
2. The leader proposes a block
3. Committee members validate the proposed block
4. Votes are collected from participating validators
5. A block is considered accepted once quorum conditions are met

The exact quorum rules and vote aggregation logic are defined by the active
consensus configuration.

---

## Finality Model

The current design assumes a committee-based finality model where blocks become
final once a supermajority of the active committee agrees on the block.

This finality model is implemented as part of the consensus framework and may be
refined or replaced as the protocol evolves.

---

## Slashing (Planned)

The consensus module exposes a slashing interface for handling validator
misbehavior. Future implementations may include penalties for:

- Double signing
- Invalid block proposals
- Extended validator downtime

Specific slashing conditions and penalties are subject to governance approval.

---

## Upgrade Path

Consensus rules are governed by on-chain governance and may be upgraded through
approved proposals.

This allows AURA-L1 to adopt improved consensus mechanisms, including tighter
integration with Avalanche’s Snowman consensus, without requiring a full
protocol reset.
