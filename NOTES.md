# UNIX + Git + Node.js — Structured Notes

## Table of Contents
- [Overview](#overview)
- [Week 1 — UNIX Basics](#week-1--unix-basics)
- [Basic Commands](#basic-commands)
- [Week 2 — Bash Scripting](#week-2--bash-scripting)
- [Git Fundamentals](#git-fundamentals)
- [Week 3 — Branching & Internals](#week-3--branching--internals)
- [Week 4 — Node.js Examples](#week-4--nodejs-examples)
- [How to run examples](#how-to-run-examples)
- [Contributing](#contributing)

---

## Overview
This repository contains concise, **runnable** examples and companion notes for UNIX, Git, Bash scripting, and Node.js. Notes are organized for easy expansion.

---

## Week 1 – UNIX Basics
- Kernel = Core of Operating System (handles memory, CPU, devices)
- Shell = Interface between user and kernel (accepts commands)
- CLI = Command Line Interface (terminal)
- GUI = Graphical User Interface (mouse based)

### Filesystem
- `/` — Root directory
- `/home` — User folders
- `/bin` — System commands
- `/etc` — Configuration files
- `/var` — Logs & variable files

### Paths
- Absolute Path: starts from root, e.g. `/home/user/file.txt`
- Relative Path: starts from current dir, e.g. `../file.txt`

---

## Basic Commands
Examples (copy/paste in a terminal):

```bash
pwd             # shows present working directory
ls              # lists files
cd ..           # move back one folder
mkdir demo      # create directory
rm -r demo      # remove directory recursively
touch file.txt  # create empty file
cat file.txt    # display file content
less file.txt   # view file pagewise
man ls          # manual for ls command
```

---

## Week 2 – Bash scripting
Variables, loops and conditionals with short examples and `scripts/shell-utils.sh` containing helper functions.

Example snippet:

```bash
name="Abhay"
echo "Hello $name"

for i in {1..5}; do
  echo $i
done
```

---

## Git Fundamentals
Key git commands and workflows. See `README.md` for contributing and git push examples.

---

## Week 3 – Branching & Internals
Commands:

```bash
git branch                # list branches
git checkout -b feature   # create feature branch
git merge feature         # merge branch
```

---

## Week 4 – Node.js Examples
Runnable examples live in the `examples/` directory:
- `examples/app.js` — minimal app
- `examples/fs-sync.js` — synchronous file write
- `examples/fs-async.js` — asynchronous file write

Each example writes small output files inside `examples/` when run.

---

## How to run examples
1. Install dependencies:

```bash
npm install
```

2. Run all examples:

```bash
npm run examples
```

3. Run a single example:

```bash
node examples/fs-async.js
```

You can also run the helper script:

```bash
./scripts/shell-utils.sh --list
./scripts/shell-utils.sh --run fs-async
```

---

## Contributing
- Add new notes in markdown under `NOTES.md` or add new example files to `examples/`.
- Add tests in `tests/` and update `package.json` scripts.
- Open a PR and include a short description of changes.

---

Happy learning! 💡
