# 🐍 Python Launcher TUI - thispy

`thispy` is a tool to select and run Python files from the current directory using a dialog menu TUI. It sorts files by last modified time, helping you quickly access priority scripts. No need to type or copy-paste long filenames. keeping your clipboard free, especially if you're using the clipboard for something else.

---

### Installation For All Linux Distros (Debian, Ubuntu, Arch, Fedora, etc.)
Follow these steps to run the installation script.

```bash
sudo curl -o /usr/local/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && chmod +x /usr/local/bin/thispy
```

> ### 📦 Make sure you have installed (optional):
> 
>   Debian/Ubuntu
>   ```bash
>   sudo apt install dialog
>   ```
>   Fedora/RHEL
>  ```bash
>   sudo dnf install dialog
>   ```
>   Arch Linux
>   ```bash
>   sudo pacman -S dialog
> ```



Then run:

```bash
thispy
```

---

### Installation For Termux (Android)
Follow these steps to run the installation script.

```bash
pkg upgrade -y && pkg install curl dialog -y
```

```bash
curl -o $PREFIX/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && chmod +x $PREFIX/bin/thispy
```

Then run:

```bash
thispy
```

---

## ⚙️ Dependencies

* `bash`
* `dialog`
---
