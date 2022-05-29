# Contributions Guide

While developing this library I often use these shortcuts.


## Dumping `brew` dependencies

```bash
brew bundle dump --force
```


## Dumping `vscode` plugins

```bash
code --list-extensions --show-versions | xargs -L 1 echo code --install-extension > vscode/install.sh
```


## Dumping `crontab` state

```bash
crontab -l > crontab/crontab
```
