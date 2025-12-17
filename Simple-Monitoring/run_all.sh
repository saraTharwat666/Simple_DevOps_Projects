#!/bin/bash

echo "=============================="
echo "   RUNNING FULL MONITORING    "
echo "=============================="
echo ""

# Step 1: Setup Netdata
if [ -f "./setup.sh" ]; then
    echo "1️⃣ Running setup.sh..."
    chmod +x setup.sh
    ./setup.sh
else
    echo "❌ setup.sh not found!"
    exit 1
fi

# Step 2: Test Dashboard
if [ -f "./test_dashboard.sh" ]; then
    echo "2️⃣ Running test_dashboard.sh..."
    chmod +x test_dashboard.sh
    ./test_dashboard.sh
else
    echo "❌ test_dashboard.sh not found!"
    exit 1
fi

# Step 3: Cleanup
if [ -f "./cleanup.sh" ]; then
    echo "3️⃣ Running cleanup.sh..."
    chmod +x cleanup.sh
    ./cleanup.sh
else
    echo "❌ cleanup.sh not found!"
    exit 1
fi

echo "✅ All scripts executed successfully!"
