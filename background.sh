#!/bin/bash
touch test && touch test123
# Create 'test' and, only if that succeeds, create 'test123' using the AND operator
(ls; ps)
# Run 'ls' and 'ps' sequentially inside a temporary subshell environment
ls; ps; whoami
# Execute 'ls', 'ps', and 'whoami' sequentially in the current shell session
lzl || echo "el comando lzl fallo"
# Attempt to run 'lzl' and, because it fails, execute the echo command via the OR operator