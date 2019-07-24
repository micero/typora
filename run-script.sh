#!/bin/bash
git pull
echo "y n" | ./create-package.sh x64gi
echo "N y y n" | ./create-package.sh ia32