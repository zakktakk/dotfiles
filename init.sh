#!/bin/bash
if [ "$(uname)" != "Darwin" ] ; then
	echo "This script is only for macOS"
	exit 1
fi

# Set bash
chsh -s /bin/bash

# Install xcode
xcode-select --install > /dev/null

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null