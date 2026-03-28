#!/bin/bash

# 👑 KRALJCODE - INSTALACIJSKI SCRIPT
# Automatski setup za besplatan AI coding tool

set -e

echo "👑 KRALJCODE - FREE AI CODING TOOL"
echo "===================================="
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git nije instaliran!"
    echo "Instaliraj git pa pokreni opet:"
    echo "  Ubuntu/Debian: sudo apt install git"
    echo "  macOS: brew install git"
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js nije instaliran!"
    echo "Instaliraj Node.js 20+:"
    echo "  https://nodejs.org/"
    exit 1
fi

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 20 ]; then
    echo "⚠️  Node.js verzija je $NODE_VERSION. Treba ti v20 ili noviji!"
    echo "Instaliraj nvm:"
    echo "  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash"
    echo "  nvm install 20"
    exit 1
fi

echo "✅ Git i Node.js su instalirani"
echo ""

# Ask for GROQ API key
echo "🔑 TREBA TI GROQ API KEY (BESPLATAN!)"
echo ""
echo "1. Otvori: https://console.groq.com/keys"
echo "2. Kreiraj account (besplatan)"
echo "3. Klikni 'Create API Key'"
echo "4. Kopiraj key"
echo ""
read -p "Zalijepi svoj GROQ_API_KEY: " GROQ_KEY

if [ -z "$GROQ_KEY" ]; then
    echo "❌ API key ne može biti prazan!"
    exit 1
fi

echo ""
echo "📦 Kreiram .env fajl..."
cat > .env << EOF
# KRALJCODE - FREE AI CODING
GROQ_API_KEY=$GROQ_KEY
GROQ_MODEL=llama-3.3-70b-versatile
KRALJCODE_FREE=true
EOF

echo "✅ .env fajl kreiran!"
echo ""

# Install dependencies
echo "📦 Instaliram dependencies..."
if command -v bun &> /dev/null; then
    echo "🐰 Koristim Bun (brže!)"
    bun install
else
    echo "📦 Koristim npm"
    npm install
fi

echo ""
echo "✅ INSTALACIJA ZAVRŠENA!"
echo ""
echo "===================================="
echo "🎉 KRALJCODE JE SPREMAN!"
echo "===================================="
echo ""
echo "🚀 POKRENI SA:"
echo "   npm run extension    # VS Code"
echo "   npm run dev:web      # Web App"
echo "   npm run dev:desktop  # Desktop App"
echo ""
echo "📖 VIŠE INFO: README-KRALJ.md"
echo ""
echo "👑 UŽIVAJ U BESPLATNOM AI CODINGU!"
echo ""
