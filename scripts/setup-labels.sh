#!/usr/bin/env bash
# setup-labels.sh — Creates the SwarmFix issue lifecycle status labels in the repo.
# Usage: gh auth login  (if not already authenticated as sulphur-swarm)
#        bash scripts/setup-labels.sh
#
# This script is idempotent: it will skip labels that already exist.

set -euo pipefail

REPO="sulphur-swarm/swarmfix"

create_label() {
  local name="$1"
  local color="$2"
  local description="$3"

  if gh label list --repo "$REPO" --json name --jq '.[].name' | grep -qx "$name"; then
    echo "Label '$name' already exists — skipping."
  else
    gh label create "$name" \
      --repo "$REPO" \
      --color "$color" \
      --description "$description"
    echo "Created label: $name"
  fi
}

# Issue lifecycle status labels
create_label "status:triaged"      "0075ca" "Issue has been triaged and classified"
create_label "status:quoted"       "e4e669" "Price quote has been posted on the issue"
create_label "status:accepted"     "0e8a16" "Customer has accepted the quote; work will begin"
create_label "status:in-progress"  "fbca04" "Fix is actively being developed"
create_label "status:pr-delivered" "6f42c1" "Pull request has been submitted to the customer repo"
create_label "status:completed"    "28a745" "PR accepted and payment received; issue resolved"

# Payment status labels
create_label "status:payment-pending"   "e4c000" "Payment link posted, awaiting payment"
create_label "status:payment-confirmed" "28a745" "Payment received and verified"
create_label "status:payment-expired"   "d73a4a" "Payment link expired without payment"
