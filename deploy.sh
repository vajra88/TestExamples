#!/usr/bin/env bash
# Stand-in for a real deploy. It changes nothing; it only proves this step ran.
set -euo pipefail
echo "Deploying ${GITHUB_REPOSITORY}@${GITHUB_SHA::7} ..."
echo "Deploy finished (demo: nothing was changed)."
