#!/bin/bash

# AURA L1 Demo Runner

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===================================================${NC}"
echo -e "${BLUE}🚀 AURA L1 - Demo Runner${NC}"
echo -e "${BLUE}===================================================${NC}"

# Check dependencies
if ! command -v cargo &> /dev/null; then
    echo "Rust/Cargo is not installed. Please install it first."
    exit 1
fi

if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install it first."
    exit 1
fi

echo -e "\n${GREEN}[1/4] 🏗️  Building Rust Node...${NC}"
cargo build --release

echo -e "\n${GREEN}[2/4] 📦 Building CLI...${NC}"
cd cli
npm install
npm run build
npm link
cd ..

echo -e "\n${GREEN}[3/4] ⚙️  Initializing Configuration...${NC}"
aura init

echo -e "\n${GREEN}[4/4] 🟢 Starting Node and Running Demo Scenario...${NC}"

# Start node in background
./target/release/aura-node &
NODE_PID=$!

echo "Waiting 5 seconds for node to initialize..."
sleep 5

echo -e "\n${BLUE}➤ Checking Chain Info...${NC}"
aura chain:info

echo -e "\n${BLUE}➤ Adding a Validator...${NC}"
aura validator:add --address 0x1234567890abcdef1234567890abcdef12345678 --stake 50000

echo -e "\n${BLUE}➤ Sending a Transaction...${NC}"
aura tx:send --to 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb0 --amount 100

echo -e "\n${BLUE}➤ Creating a Governance Proposal...${NC}"
aura gov:propose --title "Increase Block Size" --description "Proposal to increase block size to 2MB for better throughput" --type parameter_change

echo -e "\n${BLUE}➤ Listing Proposals...${NC}"
aura gov:list

echo -e "\n${BLUE}===================================================${NC}"
echo -e "${GREEN}✅ Demo Scenario Complete!${NC}"
echo -e "   The node is still running (PID: $NODE_PID)."
echo -e "   Press Ctrl+C to stop the node and exit."
echo -e "${BLUE}===================================================${NC}"

# Wait for user to exit
wait $NODE_PID
