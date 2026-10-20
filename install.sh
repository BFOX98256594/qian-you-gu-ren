#!/usr/bin/env bash
# 把「前有古人」装进 dsh 的技能目录。
# 用法：./install.sh            → 装到 ~/.dsh/skills/qian-you-gu-ren
#       DSH_SKILLS_DIR=... ./install.sh  → 装到指定目录
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST_ROOT="${DSH_SKILLS_DIR:-$HOME/.dsh/skills}"
DEST="$DEST_ROOT/qian-you-gu-ren"

mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$DEST/SKILL.md"
cp -R "$SRC/references" "$DEST/"

echo "✓ 已安装到 $DEST"
echo "→ 新开一个 dsh 会话，技能列表里应出现 qian-you-gu-ren"
