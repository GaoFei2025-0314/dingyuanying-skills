# 天道人物思维库 · Skills

把《天道》（原著《遥远的救世主》，豆豆著）里最值得学习的三个人物，蒸馏成一套可以用在现代社会的 Agent Skills——同时支持 [Claude Code](https://code.claude.com/docs) 和 [OpenAI Codex](https://developers.openai.com/codex/skills)（两者共用同一开放的 Agent Skills 标准）。

不是金句语录合集，而是复用他们**各自的方法**，并诚实标注每套方法的盲区与红线。

## 三个 Skill，三种分工

| Skill | 人物 | 管什么 | 框架 |
|---|---|---|---|
| `dingyuanying` | 丁元英 | **看透事**：决策、规律、因果 | 七步拆解 |
| `ruixiaodan` | 芮小丹 | **安顿心**：身份、情绪、关系 | 自在五问 |
| `xiaoyawen` | 肖亚文 | **接住机会**：职业、人脉、下注 | 五步法 |

- **丁元英 · 七步拆解**：剥文化属性 → 强弱势自检（"靠"还是"动"）→ 见路不走 → 认客观规律 → 不昧因果 → 自性自度 → 无所住。适合重大选择、看不清本质、在等"救世主"的时刻。
- **芮小丹 · 自在五问**：去掉观众 → 卸掉"应该" → 回到当下 → 爱而不占有 → 拆掉抵押。适合内耗、身份焦虑、患得患失、关系拧巴的时刻。她是全剧真正的"得道者"——丁元英是想明白才活明白，她天生活得明白。
- **肖亚文 · 五步法**：识货 → 长线 → 本分 → 冷判 → 敢接。适合"没背景没资源"的破局、人脉经营、机会评估与下注。她是全剧唯一纯靠方法走通的普通人，每一步都可复制。

事情复杂用丁元英，心里拧巴用芮小丹，机会当前用肖亚文；很多问题需要接力使用。

## 目录结构

```
skills/
├── dingyuanying/                     # 丁元英 · 七步拆解
│   ├── SKILL.md
│   ├── agents/openai.yaml            # Codex 可选元数据（Claude 会忽略）
│   └── references/
│       ├── core-concepts.md          # 核心概念详解（含原著语境）
│       ├── apply-to-modern-life.md   # 职业/创业/投资/人际/内耗 五类场景
│       └── pitfalls-and-limits.md    # 盲区、代价与使用红线
├── ruixiaodan/                       # 芮小丹 · 自在五问
│   ├── SKILL.md
│   ├── agents/openai.yaml
│   └── references/
│       ├── character-and-concepts.md # 人物、概念、与丁元英的分工
│       └── pitfalls-and-limits.md    # 理想化风险、假洒脱、使用红线
└── xiaoyawen/                        # 肖亚文 · 五步法
    ├── SKILL.md
    ├── agents/openai.yaml
    └── references/
        ├── playbook.md               # 向上关系/跳槽/入伙/被裁重启 四场景打法
        └── pitfalls-and-limits.md    # 功利化人脉、盲目all-in、幸存者偏差
.agents/skills/                       # → 符号链接，供 Codex 在本仓库内自动发现
docs/decision-card.html               # 三人思维卡（浏览器直接打开，一页对照三套框架）
install.sh                            # 一键安装（Claude / Codex / 两者）
```

## 怎么用

**一键安装**（推荐，装到用户级目录后在任何项目都可用）：

```bash
git clone https://github.com/GaoFei2025-0314/dingyuanying-skills.git
cd dingyuanying-skills
./install.sh                    # 全部 Skill，同时装 Claude Code 和 Codex
./install.sh claude             # 只装 Claude Code → ~/.claude/skills/
./install.sh codex              # 只装 Codex      → ~/.agents/skills/
./install.sh all dingyuanying  # 只装指定 Skill
```

**在 Claude Code 里**：安装后在匹配场景自动触发；也可以直接说"用丁元英/芮小丹/肖亚文的思路帮我看看这件事"。

**在 OpenAI Codex 里**（CLI / IDE 扩展 / Codex 应用均可）：
- 输入 `$dingyuanying`、`$ruixiaodan`、`$xiaoyawen`，或运行 `/skills` 从列表选择；任务匹配描述时也会隐式触发。
- 只是克隆了本仓库并在仓库目录里启动 Codex 的话，无需安装——Codex 会通过 `.agents/skills/` 自动发现。
- 新装的 Skill 如未立即出现，重启一次 Codex 即可。

**当成思维清单**：不装任何工具也行——各 `SKILL.md` 本身就是可对照使用的决策/自省清单，`docs/decision-card.html` 是一页三卡的「三人思维卡」：丁元英七步拆解、芮小丹自在五问、肖亚文五步法，每条配一句"问自己"，按处境选卡对照。

## 一句话

> **学丁元英的"看透"，学芮小丹的"自在"，学肖亚文的"准备与下注"**——没有救世主，尽人事而不执于果；根在自己这儿，外面的得失就只是天气；跳板搭了很多年，那一跳才成立。

---

*本项目为对文艺作品人物思维的提炼与再创作，用于学习和思考，不构成任何投资、法律、心理或人生建议。*
