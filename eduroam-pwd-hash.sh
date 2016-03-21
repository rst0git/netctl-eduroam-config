#!/bin/bash
echo "	This script will generate md4 hash of your password."
echo ""
echo "		Step 1. Type your password and press enter."
echo "		Step 2. Press Ctrl + D.\n "
echo ""
echo "!!!Warning: Your password will appear as plain text on your screen."

tr -d '\n' | iconv -t utf16le | openssl md4
