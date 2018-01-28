# sobolevn's dotfiles

![sobolevn's dotfiles](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/tty.gif)


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See `Brewfile`
- all my `macOS` configuration. See `macos`
- all my `python` dependencies. See `python/`
- all my shell configuration. See `shell/` and `config/zshrc`
- all my `sublime-text3` configuration. See `sublime3-conf/`


## Installation

We are using `dotbot` to handle any installations. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run `install` script

### Setting up SublimeText

You will need to do some extra steps with `sublime`:
1. Open an editor
2. Run this command in "Command Palette": `Package Control: Satisfy Dependencies`
3. Restart `sublime`

You are all set!


## CLI

I am using `zsh` with `oh-my-zsh` as a main shell. I also have a lot of tools to make my working experience better. Here are some good articles I wrote about my environment:

- ["Instant +100% command line productivity boost"](https://dev.to/sobolevn/instant-100-command-line-productivity-boost)
- ["Using better CLIs"](https://dev.to/sobolevn/using-better-clis-6o8)

I mainly work with three stacks:

- `python`
- `node`
- `elixir`

So, they are configured nice and smoothly.

I also have `php`, `ruby`, `rust`, and `java` installed. But I am not using them on a daily basis.


## Infrastructure

I try to containerize everything. So `docker` is my main development and deployment tool. You can install it from its [official site](https://docs.docker.com/docker-for-mac/) (`brew` [version](https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb) is also an option).
However, I also use several databases and other services locally:

- `postgresql` (with `postgis`)
- `mysql`
- `mongodb`
- `redis`
- `rabbitmq`


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
- `Jedi` for `python` autocomplete
- `TypeScriptPlugin` for `typescript` autocomplete

And syntax highlighting for all the things:

- `Bats` syntax highlighting
- `Dockerfile` syntax highlighting
- `DotEnv` syntax highlighting
- `Elixir` syntax highlighting
- `INI` and `TOML` syntax highlighting
- `JSX` syntax highlighting
- `Sass` syntax highlighting
- `Vue` syntax highlight


## External services

I use [`wakatime`](https://wakatime.com/) for all my projects. It is a great tool to track time of your work. It is a free service.

There are three main plugins I am using:

1. For `sublime`: https://wakatime.com/sublime-text
2. For `idea`: https://wakatime.com/intellij-idea
3. For `zsh`: https://wakatime.com/terminal


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `git`

    1.1 `~/.gitconfig_local` to store any user-specific data

2. `shell`

    2.1 `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
