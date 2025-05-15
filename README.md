# 🐍 Python Launcher TUI - thispy

A simple dialog-based Python launcher.
A tool to select and run Python files from the current directory using a dialog menu.
Script `thispy` searches and runs .py files based on their last modified order. Ideal for a quick workflow in Python project directories.
Running Python files with long or complex filenames can be tedious — especially when you're trying to copy, paste, or autocomplete in the terminal. It often disrupts your clipboard workflow.

---

## Installation

### For All Linux Distros (Debian, Ubuntu, Arch, Fedora, etc.)

```bash
sudo curl -o /usr/local/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && \
sudo chmod +x /usr/local/bin/thispy
```

> 📦 Make sure you have installed:
>
> ```bash
> sudo apt install dialog    # Debian/Ubuntu
> sudo dnf install dialog    # Fedora/RHEL
> sudo pacman -S dialog      # Arch Linux
> ```

Then run:

```bash
thispy
```

---

### For Termux (Android)
```bash
pkg upgrade
```

```bash
pkg install dialog curl python -y
```

```bash
curl -o $PREFIX/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && \
chmod +x $PREFIX/bin/thispy
```

Then run:

```bash
thispy
```

---

## ⚙️ Dependencies

* `bash`
* `dialog`
* `python`, `python3`, or `python2`

---

## 📁 Description

This script searches and runs `.py` files based on their last modified order. Ideal for a quick workflow in Python project directories.

---
