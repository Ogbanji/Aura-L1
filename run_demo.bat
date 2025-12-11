@echo off
setlocal EnableDelayedExpansion

echo ===================================================
echo 🚀 AURA L1 - Demo Runner
echo ===================================================

:: Check for Node.js
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed. Please install it first.
    exit /b 1
)

:: Check for Rust
where cargo >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Rust/Cargo is not installed. Please install it first.
    exit /b 1
)

echo.
echo [1/4] 🏗️  Building Rust Node...
cargo build --release
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Rust build failed.
    exit /b 1
)

echo.
echo [2/4] 📦 Building CLI...
cd cli
call npm install
call npm run build
call npm link
cd ..

echo.
echo [3/4] ⚙️  Initializing Configuration...
call aura init

echo.
echo [4/4] 🟢 Starting Node and Running Demo Scenario...
echo.
echo    The node will start in a separate window.
echo    We will then run a sequence of CLI commands to demonstrate functionality.
echo.

:: Start Node in a new window
start "AURA L1 Node" cmd /k "target\release\aura-node.exe"

:: Wait for node to start
echo Waiting 5 seconds for node to initialize...
timeout /t 5 /nobreak >nul

echo.
echo ➤ Checking Chain Info...
call aura chain:info

echo.
echo ➤ Adding a Validator...
call aura validator:add --address 0x1234567890abcdef1234567890abcdef12345678 --stake 50000

echo.
echo ➤ Sending a Transaction...
call aura tx:send --to 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb0 --amount 100

echo.
echo ➤ Creating a Governance Proposal...
call aura gov:propose --title "Increase Block Size" --description "Proposal to increase block size to 2MB for better throughput" --type parameter_change

echo.
echo ➤ Listing Proposals...
call aura gov:list

echo.
echo ===================================================
echo ✅ Demo Scenario Complete!
echo    You can inspect the running node in the other window.
echo    Press any key to exit this script.
echo ===================================================
pause >nul
