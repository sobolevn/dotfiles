# Contributions Guide

While developing this library I often use these shortcuts.


## Dumping `brew` dependencies

```bash
brew bundle dump --force
```


## Dumping `vscode` plugins

```bash
code --list-extensions | xargs -L 1 echo code --install-extension > vscode/install.sh
```
