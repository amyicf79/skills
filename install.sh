#!/bin/bash
# install.sh v2 — 一键分发到所有主流 Agent 平台
# 用法: bash install.sh 或 curl -sL https://raw.githubusercontent.com/ixno/skills/main/install.sh | bash
set -e
SRC="\${1:-./skills}"

# 核心平台
mkdir -p ~/.claude/skills && cp -r \$SRC/* ~/.claude/skills/ 2>/dev/null || true
mkdir -p ~/.cursor/skills && cp -r \$SRC/* ~/.cursor/skills/ 2>/dev/null || true
mkdir -p ~/.codex/skills && cp -r \$SRC/* ~/.codex/skills/ 2>/dev/null || true
mkdir -p ~/.config/opencode/skills && cp -r \$SRC/* ~/.config/opencode/skills/ 2>/dev/null || true

# 扩展平台
mkdir -p ~/.gemini/skills && cp -r \$SRC/* ~/.gemini/skills/ 2>/dev/null || true
mkdir -p ~/.copilot/skills && cp -r \$SRC/* ~/.copilot/skills/ 2>/dev/null || true
mkdir -p ~/.kiro/skills && cp -r \$SRC/* ~/.kiro/skills/ 2>/dev/null || true
mkdir -p ~/.codeium/windsurf/skills && cp -r \$SRC/* ~/.codeium/windsurf/skills/ 2>/dev/null || true

# 通用回退(所有平台都读)
mkdir -p ~/.agents/skills && cp -r \$SRC/* ~/.agents/skills/ 2>/dev/null || true

echo "✅ 已分发到: Claude Code / Cursor / Codex / OpenCode / Gemini / Copilot / Kiro / Windsurf / 通用回退"
echo "💡 腾讯 SkillHub: 需手动上传 dist/tencent-skillhub/skills/ 到开发者后台"
