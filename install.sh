#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Symlink copilot instructions for Copilot CLI
if [ -f "$DOTFILES_DIR/.github/copilot-instructions.md" ]; then
  mkdir -p "$HOME/.copilot"
  ln -sf "$DOTFILES_DIR/.github/copilot-instructions.md" "$HOME/.copilot/copilot-instructions.md"
  echo "✓ Linked copilot-instructions.md → ~/.copilot/copilot-instructions.md"
  ln -sf "$DOTFILES_DIR/session-state" "$HOME/.copilot/"
  echo "✓ Linked session-state → ~/.copilot/session-state"
  ln -sf "$DOTFILES_DIR/mcp-config.json" "$HOME/.copilot/mcp-config.json"
  echo "✓ Linked mcp-config.json → ~/.copilot/mcp-config.json"
  ln -sf "$DOTFILES_DIR/mcp-oauth-config" "$HOME/.copilot/"
  echo "✓ Linked mcp-oauth-config → ~/.copilot/mcp-oauth-config"
  ln -sf "$DOTFILES_DIR/skills" "$HOME/.copilot/"
  echo "✓ Linked skills → ~/.copilot/skills"
fi

echo "Dotfiles install complete."

