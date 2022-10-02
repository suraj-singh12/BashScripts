#!/bin/bash
chmod +x joke
echo "export PATH=\"$(pwd):\$PATH\"" >> ~/.bashrc
source ~/.bashrc
