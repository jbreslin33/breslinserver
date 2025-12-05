#!/bin/bash

# NOTE: This script is intended to be run with 'source' or '.' to work immediately:
#       Example: source ./setup_gemini_cli.sh

echo "🚀 Starting Immediate-Fix Gemini CLI Installation..."
echo "---"

# --- 1. Install 'curl' Prerequisite ---
if ! command -v curl &> /dev/null; then
    echo "🚨 'curl' command not found. Installing now (requires sudo)..."
    sudo apt update
    sudo apt install -y curl
    if [ $? -ne 0 ]; then
        echo "❌ ERROR: Failed to install 'curl'. Exiting..."
        return 1  # Use 'return' instead of 'exit' when being sourced
    fi
    echo "✅ 'curl' installed."
fi

echo "---"

# --- 2. Install Node Version Manager (NVM) ---
if command -v nvm &> /dev/null; then
    echo "✅ NVM (Node Version Manager) is already installed."
else
    echo "⬇️ Installing NVM (Node Version Manager)..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    
    # 💥 CRITICAL: Reload NVM environment so subsequent commands work in THIS shell.
    # This block is the core fix for immediate use.
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

    if command -v nvm &> /dev/null; then
        echo "✅ NVM installed successfully and loaded."
    else
        echo "❌ ERROR: Failed to install NVM. Exiting..."
        return 1
    fi
fi

echo "---"

# --- 3. Install and Use Node.js v20 (LTS) ---
REQUIRED_NODE_VERSION="20"
echo "⬆️ Installing and switching to Node.js v$REQUIRED_NODE_VERSION..."

nvm install $REQUIRED_NODE_VERSION
nvm use $REQUIRED_NODE_VERSION
nvm alias default $REQUIRED_NODE_VERSION

current_node_version=$(node -v)
echo "✅ Node.js updated and active: $current_node_version"
echo "---"

# --- 4. Install Gemini CLI Globally ---
echo "⬇️ Installing Gemini CLI globally using npm..."
npm install -g @google/gemini-cli

if [ $? -eq 0 ]; then
    echo "✅ Gemini CLI installed successfully!"
else
    echo "❌ ERROR: Failed to install Gemini CLI via npm."
    return 1
fi

echo "---"

# --- 5. Final Instructions ---
echo "Go to: https://aistudio.google.com/app/apikey
echo "to get your api key
echo "🎉 Installation Complete! You can run 'gemini' immediately."
echo ""
echo "    gemini"
echo ""
echo "Note: For *future* terminal sessions, you might still need to close and reopen, or run 'nvm use 20' if NVM doesn't load automatically."
