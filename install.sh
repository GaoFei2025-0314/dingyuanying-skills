#!/usr/bin/env bash
# 把丁元英 Skill 安装到用户级目录，供 Claude Code 和/或 OpenAI Codex 使用。
#
# 用法：
#   ./install.sh           # 同时安装到 Claude Code 和 Codex
#   ./install.sh claude    # 只装 Claude Code  (~/.claude/skills/dingyuanying)
#   ./install.sh codex     # 只装 Codex       (~/.agents/skills/dingyuanying)

set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills/dingyuanying"
TARGET="${1:-all}"

if [ ! -f "$SRC/SKILL.md" ]; then
  echo "错误：找不到 $SRC/SKILL.md，请在仓库根目录运行本脚本。" >&2
  exit 1
fi

install_to() {
  local dest="$1" name="$2"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  cp -R "$SRC" "$dest"
  echo "已安装到 $name：$dest"
}

case "$TARGET" in
  claude) install_to "$HOME/.claude/skills/dingyuanying" "Claude Code" ;;
  codex)  install_to "$HOME/.agents/skills/dingyuanying" "Codex" ;;
  all)
    install_to "$HOME/.claude/skills/dingyuanying" "Claude Code"
    install_to "$HOME/.agents/skills/dingyuanying" "Codex"
    ;;
  *)
    echo "用法：./install.sh [claude|codex]（缺省两者都装）" >&2
    exit 1
    ;;
esac

echo
echo "完成。在 Claude Code 里直接说\"用丁元英的思路看看这件事\"即可触发；"
echo "在 Codex 里输入 \$dingyuanying 或 /skills 选择，也支持按描述隐式触发。"
echo "（Codex 如未立即识别，重启一次即可。）"
