# Contributions Guide

While developing this library I often use these shortcuts.


## Dumping `brew` dependencies

```bash
brew bundle dump --force --describe --no-restart
bash ./vscode/versions.sh
```


## Dumping `crontab` state

```bash
crontab -l > crontab/crontab
```
