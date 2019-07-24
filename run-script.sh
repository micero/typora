#!/bin/bash
git pull
echo "y n" | ./create-package.sh x64
echo "N y n" | ./create-package.sh ia32