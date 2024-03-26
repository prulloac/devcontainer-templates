#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "java" java --version
check "bun" bun --version
check "node" node --version
check "npm" npm --version
check "docker" docker --version
check "docker-compose" docker-compose --version
check "git" git --version
check "gh" gh --version

# Report result
reportResults
