#!/usr/bin/env bash
# 把《天道》人物思维 Skills 安装到用户级目录，供 Claude Code 和/或 OpenAI Codex 使用。
#
# 用法：
#   ./install.sh                       # 全部 Skill，同时装 Claude Code 和 Codex
#   ./install.sh claude                # 全部 Skill，只装 Claude Code (~/.claude/skills/)
#   ./install.sh codex                 # 全部 Skill，只装 Codex      (~/.agents/skills/)
#   ./install.sh all dingyuanying     # 只装指定 Skill（可列多个）

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-all}"
shift 2>/dev/null || true

case "$TARGET" in
  claude|codex|all) ;;
  *) echo "用法：./install.sh [claude|codex|all] [skill 名...]" >&2; exit 1 ;;
esac

# 未指定 skill 名则安装 skills/ 下全部
if [ "$#" -gt 0 ]; then
  SKILLS=("$@")
else
  SKILLS=()
  for d in "$ROOT"/skills/*/; do
    [ -f "$d/SKILL.md" ] && SKILLS+=("$(basename "$d")")
  done
fi

install_to() {
  local skill="$1" dest_root="$2" name="$3"
  local src="$ROOT/skills/$skill"
  if [ ! -f "$src/SKILL.md" ]; then
    echo "跳过 $skill：找不到 $src/SKILL.md" >&2
    return
  fi
  mkdir -p "$dest_root"
  rm -rf "$dest_root/$skill"
  cp -R "$src" "$dest_root/$skill"
  echo "已安装 $skill → $name：$dest_root/$skill"
}

for skill in "${SKILLS[@]}"; do
  case "$TARGET" in
    claude) install_to "$skill" "$HOME/.claude/skills" "Claude Code" ;;
    codex)  install_to "$skill" "$HOME/.agents/skills" "Codex" ;;
    all)
      install_to "$skill" "$HOME/.claude/skills" "Claude Code"
      install_to "$skill" "$HOME/.agents/skills" "Codex"
      ;;
  esac
done

echo
echo "完成。Claude Code 里直接说\"用丁元英/芮小丹/肖亚文的思路看看这件事\"即可触发；"
echo "Codex 里输入 \$dingyuanying、\$ruixiaodan、\$xiaoyawen 或用 /skills 选择。"
echo "（Codex 如未立即识别，重启一次即可。）"
