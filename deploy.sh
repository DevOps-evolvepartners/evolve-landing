#!/bin/bash
# deploy.sh — Evolve Landing
# Uso: ./deploy.sh

set -e

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
REMOTE_USER="deploy"
REMOTE_HOST="72.61.103.106"
REMOTE_PATH="/srv/apps/evolve-landing"

echo "🚀 Desplegando Evolve Landing..."

rsync -avz --delete \
  --exclude='.git' \
  --exclude='README.md' \
  --exclude='deploy.sh' \
  --exclude='.DS_Store' \
  "$PROJECT_DIR/" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/"

echo "✅ Deploy completado → evolvefichaje.com"