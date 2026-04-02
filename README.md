# Quick Tips Ep #1 — Running Multiple Claude Code Sessions in tmux: 2 Agents, 1 Terminal

This repo contains the prompts and scripts from **Quick Tips Episode 1** on the [Talk It Do It](https://youtube.com/@talkitdoit) YouTube channel.

## What's in here

- **`prompts/`** — The prompts used in the episode
- **`scripts/`** — A shell script to spin up a tmux session with two side-by-side Claude Code agents

## Watch the episode

> Part of the **talkitdoit Quick Tips** series — short, practical tips for working with AI coding tools.
> 📺 [Watch on YouTube](https://youtube.com/@talkitdoit)

---

## What this episode covers

How to use **tmux** to run multiple Claude Code sessions side by side in a single terminal window — set up entirely using Claude Code itself, in two prompts.

---

## Repo structure

```
.
├── prompts/
│   ├── 01-install-tmux.md        # Prompt to install and verify tmux
│   └── 02-create-session.md      # Prompt to generate the tmux session script
├── scripts/
│   └── start-claude-sessions.sh  # Generated tmux launcher script
└── README.md
```

---

## Prompts used in the episode

### Prompt 1 — Install tmux

```
Check if tmux is installed. If not, install it using the correct package manager
for this OS — brew for macOS, apt for Ubuntu/Debian. Confirm the version once done.
```

### Prompt 2 — Create the split layout

```
Create an executable shell script called start-claude-sessions.sh that starts a
new tmux session named 'claude-work', splits the window into two vertical panes
side by side, and sets the working directory in both panes to the current
directory. Show me how to run it.
```

---

## Usage

**Run the session script:**

```bash
chmod +x scripts/start-claude-sessions.sh
./scripts/start-claude-sessions.sh
```

**Then in each pane, start Claude Code:**

```bash
claude
```

**Essential tmux key bindings:**

| Key                                | Action                            |
| ---------------------------------- | --------------------------------- |
| `Ctrl+B →`                         | Switch to right pane              |
| `Ctrl+B ←`                         | Switch to left pane               |
| `Ctrl+B D`                         | Detach session (keeps it running) |
| `tmux attach -t claude-work`       | Reattach to session later         |
| `tmux ls`                          | List active sessions              |
| `tmux kill-session -t claude-work` | Kill the session                  |

---

## Requirements

- macOS or Linux (Ubuntu/Debian)
- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed and authenticated
- tmux (installed via the first prompt)

---

## Watch the episode

📺 [youtube.com/@talkitdoit](https://youtube.com/@talkitdoit)

Subscribe for new Quick Tips weekly — covering Claude Code, agentic workflows, platform engineering, and more.

---

## About talkitdoit Quick Tips

A series of short, focused videos — one tip, one terminal, done. No fluff.

| Episode | Topic                                                        |
| ------- | ------------------------------------------------------------ |
| EP#1    | tmux + Claude Code — Two Agents, One Terminal ← you are here |
| EP#2    | coming soon                                                  |

---

## Disclaimer

This content is for educational and entertainment purposes only. Scripts and prompts are provided as-is. Use at your own risk. The author takes no responsibility for any outcomes resulting from the use of this material.
