#!/bin/sh

# Compile the FW code, exit with a nonzero code if we fail
make || exit 1
# Run the cpp script, exit with nonzero code if we fail
g++ calculator.cpp || exit 2
