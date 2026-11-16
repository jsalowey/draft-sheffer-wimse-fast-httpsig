#!/bin/bash
set -euo pipefail
cd /home/yaronf/misc/wimse/draft-sheffer-wimse-fast-httpsig

if [ -f draft-todo-yourname-protocol.md ]; then
  git mv draft-todo-yourname-protocol.md draft-sheffer-wimse-fast-httpsig.md
fi

sed -i \
  -e 's/TODO - Your title/Fast HTTP Message Signatures for WIMSE/' \
  -e 's/TODO - Abbreviation/WIMSE Fast HTTPSig/' \
  -e 's/draft-todo-yourname-protocol-latest/draft-sheffer-wimse-fast-httpsig-latest/' \
  -e 's/area: AREA/area: "Security"/' \
  -e 's/workgroup: WG Working Group/workgroup: "Workload Identity in Multi System Environments"/' \
  draft-sheffer-wimse-fast-httpsig.md

git add -A
git status
git commit -m "Initial draft-sheffer-wimse-fast-httpsig"
git push -u origin main
rm -f bootstrap.sh
