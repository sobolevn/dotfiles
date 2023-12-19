# Contributions Guide

While developing this library I often use these shortcuts.


## Dumping `brew` dependencies

```bash
brew bundle dump --force --describe --no-restart
```


## Dumping `crontab` state

```bash
crontab -l > crontab/crontab
```
