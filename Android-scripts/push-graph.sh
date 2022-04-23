#!/usr/bin/bash
source bin/source-ssh-agent
cd storage/documents/Diario
git add -A
git commit -m "sync from android"
git push