#!/bin/bash
cd /Users/lijingchen/.openclaw/workspace

# 检查是否有未提交的更改
if ! git diff --quiet || [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin master
fi
