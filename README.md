# 丁元英 · 现代版 Skills

把《天道》（原著《遥远的救世主》，豆豆著）里 **丁元英** 的思维方式，蒸馏成一套可以用在现代社会的 Agent Skill——同时支持 [Claude Code](https://code.claude.com/docs) 和 [OpenAI Codex](https://developers.openai.com/codex/skills)（两者共用同一开放的 Agent Skills 标准）。

不是金句语录合集，而是复用他**看问题的方法**：透过现象剥到文化属性，按客观规律办事，为自己的因果负责，不等救世主。

## 这个 Skill 会做什么

当你面对重大选择（跳槽、创业、投资、合作、感情、要不要赌一把），或被情绪和"应该如此"困住、或在等一个"救世主"来救自己时，它用丁元英的七步框架帮你冷静拆解：

1. **剥到文化属性** — 技术 → 制度 → 文化，找到真正的根子
2. **强势/弱势文化自检** — 你是在"靠"，还是在"动"
3. **见路不走** — 别人的成功路径不能照抄，学规律不学表相
4. **认客观规律** — 别跟不以你意志转移的"道"较劲
5. **不昧因果** — 想要什么果，就得诚实地种什么因
6. **自性自度** — 这里没有救世主，此刻你能动的第一步是什么
7. **无所住** — 尽人事，然后别被得失绑架

并且——它**诚实地讲这套思维的盲区与代价**（冷会滑向刻薄、"弱势文化"易被滥用成标签、无常算不尽），见 `pitfalls-and-limits.md`。学他的方法，别学他的孤傲。

## 目录结构

```
skills/dingyuanying/                  # Skill 本体（Claude 与 Codex 通用格式）
├── SKILL.md                          # 主入口：触发条件 + 七步分析流程
├── agents/openai.yaml                # Codex 可选元数据（Claude 会忽略）
└── references/
    ├── core-concepts.md              # 核心概念详解（含原著语境）
    ├── apply-to-modern-life.md       # 职业/创业/投资/人际/内耗 五类场景
    └── pitfalls-and-limits.md        # 盲区、代价与使用红线（建议先读）
.agents/skills/dingyuanying           # → 指向上面的符号链接，供 Codex 在本仓库内自动发现
docs/
└── decision-card.html                # 七步决策卡（浏览器直接打开即可对照使用）
install.sh                            # 一键安装到用户级目录（Claude / Codex / 两者）
```

## 怎么用

**一键安装**（推荐，装到用户级目录后在任何项目都可用）：

```bash
git clone https://github.com/GaoFei2025-0314/dingyuanying-skills.git
cd dingyuanying-skills
./install.sh          # 同时安装 Claude Code 和 Codex
./install.sh claude   # 只装 Claude Code → ~/.claude/skills/dingyuanying
./install.sh codex    # 只装 Codex      → ~/.agents/skills/dingyuanying
```

**在 Claude Code 里**：安装后在合适的场景会自动触发；也可以直接说"用丁元英的思路帮我看看这件事"。

**在 OpenAI Codex 里**（CLI / IDE 扩展 / Codex 应用均可）：
- 安装后输入 `$dingyuanying`，或运行 `/skills` 从列表选择；任务匹配描述时 Codex 也会隐式触发。
- 如果只是克隆了本仓库并在仓库目录里启动 Codex，无需安装——Codex 会通过 `.agents/skills/` 自动发现本 Skill。
- 新装的 Skill 如未立即出现，重启一次 Codex 即可。

**当成思维清单**：不装 Claude Code 也行，`SKILL.md` 的七步流程和 `apply-to-modern-life.md` 的场景走法，本身就是一份可以对照使用的决策清单。

**七步决策卡**：用浏览器打开 `docs/decision-card.html`，是一页可随手对照的决策卡——七道关、每关一句"问自己"、附使用红线，自动适配深浅色主题。

## 一句话

> 看透一件事要剥到文化属性；判断心态用强弱势自检（是"靠"还是"动"）；学别人要见路不走；动作上认规律、为因果负责；根子上自性自度、无所住——**没有救世主，尽人事而不执于果。**

---

*本项目为对文艺作品人物思维的提炼与再创作，用于学习和思考，不构成任何投资、法律或人生建议。*
