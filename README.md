# sobolevn's dotfiles


## Contents

What's in there?

* all my `brew` dependencies including: applications, fonts, etc
* all my `macOS` configuration
* all my shell configuration
* all my `sublime-text3` configuration


## Installation

We are using `dotbot` to handle any installations. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run `install` script

### Setting up SublimeText

You will need to do some extra steps with `sublime`. Open an editor and run this command in "Command Palette": `Package Control: Satisfy Dependencies`. Restart `sublime`. You are all set!


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `git`

    1.1 `~/.gitconfig_local` to store any user-specific data

2. `shell`

    2.1 `~/.shell_env_local` to store local shell config, like: username, passwords, `gpg` keys and so on
