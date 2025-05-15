# 🐍 Python Launcher TUI - thispy

`thispy` is a tool to select and run Python files from the current directory using a dialog menu TUI. It sorts files by last modified time, helping you quickly access priority scripts. No need to type or copy-paste long filenames. keeping your clipboard free, especially if you're using the clipboard for something else.

---
## Quick Installation For All Linux Distros (Debian, Ubuntu, Arch, Fedora, etc.)
Follow these steps to run the installation on Terminal.

```bash
sudo curl -o /usr/local/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && sudo chmod +x /usr/local/bin/thispy
```

<details>
<summary>📦 <ins>Make sure you have installed (Optional).<ins></summary>
  
#### Debian/Ubuntu
```bash
sudo apt install curl dialog
```

#### Fedora/RHEL
```bash
sudo dnf install curl dialog
```

#### Arch Linux/Manjaro
```bash
sudo pacman -S curl dialog
```

#### OpenSUSE
```bash
sudo zypper install curl dialog
```

</details>

Run it in the directory where the Python file is located:

```bash
thispy
```
---
&nbsp;

## For Termux (Android)
Follow these steps to run the installation on Terminal.

```bash
pkg upgrade -y && pkg install curl dialog -y
```

```bash
curl -o $PREFIX/bin/thispy https://raw.githubusercontent.com/jmswycode/thispy/main/thispy.sh && chmod +x $PREFIX/bin/thispy
```

Run it in the directory where the Python file is located:

```bash
thispy
```

---
&nbsp;
## ⚙️ Dependencies

* `bash`
* `curl`
* `dialog`
---
