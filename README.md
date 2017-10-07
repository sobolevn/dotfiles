# sobolevn's dotfiles

![sobolevn's dotfiles](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/tty.gif)


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See `Brewfile`
- all my `macOS` configuration. See `macos`
- all my shell configuration. See `shell/` and `config/zshrc`
- all my `sublime-text3` configuration. See `sublime3-conf/`


## Installation

We are using `dotbot` to handle any installations. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run `install` script

### Setting up SublimeText

You will need to do some extra steps with `sublime`. Open an editor and run this command in "Command Palette": `Package Control: Satisfy Dependencies`. Restart `sublime`. You are all set!


## CLI

I am using `zsh` with `oh-my-zsh` as a main shell. I also have a lot of tools to make my working experience better. Here's a good article I wrote about my shell experience:

- ["Instant +100% command line productivity boost"](https://dev.to/sobolevn/instant-100-command-line-productivity-boost)
- ["Using better CLIs"](https://dev.to/sobolevn/using-better-clis-6o8)

I mainly work with three stacks:

- `python`
- `node`
- `elixir`

So, they are configured nice and smoothly.

I also have `php`, `ruby`, and `java` installed. But I am not using them on a daily basis.


## Sublime

I love my `Sublime`. It is fast and beautiful. Here what it looks like for `elixir`:

![sobolevn's Sublime for Elixir](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/sublime-elixir.png)

And `Vue`:

![sobolevn's Sublime for Elixir](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/sublime-vue.png)

Here's a list of packages I use:

- `ayu` theme
- `Babel` for better `js` support
- `EditorConfig` for consistent styles
- `ElixirSublime` code completions
- `GitGutter` for nice `git` integration
- `Highlight` to export `rtf` highlighted text
- `SideBarEnhancements` for custom actions in sidebar

And syntax highlighting for all the things:

- `Bats` syntax highlighting
- `Dockerfile` syntax highlighting
- `Elixir` syntax highlighting
- `INI` and `TOML` syntax highlighting
- `JSX` syntax highlighting
- `Sass` syntax highlighting
- `Vue` syntax highlight


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `git`

    1.1 `~/.gitconfig_local` to store any user-specific data

2. `shell`

    2.1 `~/.shell_env_local` to store local shell config, like: username, passwords, `gpg` keys and so on
