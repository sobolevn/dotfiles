# sobolevn's dotfiles

![sobolevn's dotfiles](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/tty.gif)


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See `Brewfile`
- all my `macOS` configuration. See `macos`
- all my `python` dependencies. See `python/`
- all my shell configuration. See `shell/` and `config/zshrc`
- all my `vscode` configuration. See `vscode/`


## Installation

We are using `dotbot` to handle any installations. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run: `./install`


## CLI

I am using `zsh` with `oh-my-zsh` as a main shell.
I also have a lot of tools to make my working experience better.
Here are some good articles I wrote about my environment:

- ["Instant +100% command line productivity boost"](https://dev.to/sobolevn/instant-100-command-line-productivity-boost)
- ["Using better CLIs"](https://dev.to/sobolevn/using-better-clis-6o8)

I mainly work with three stacks:

- `python`
- `node`
- `elixir`

So, they are configured nice and smoothly.

I also have `php`, `ruby`, `rust`, and `java` installed.
But I am not using them on a daily basis.


## Infrastructure

I try to containerize everything.
So `docker` is my main development and deployment tool.
You can install it from its [official site](https://docs.docker.com/docker-for-mac/) (`brew` [version](https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb) is also an option).

I prefer to use `edge` version of `docker`.
So, you will have to download it manually.

However, I also use several databases and other services locally:

- `postgresql` (with `postgis`)
- `mysql`
- `mongodb`
- `redis`
- `rabbitmq`
- `consul`


## VS Code

I loved my `Sublime`. It was fast and beautiful.
But I have switched to `vscode`.
The main reason is that `Sublime` is almost unmainteined.
Packages are also abandoned.

I have switched to `vscode`.
It solved almost all issues I had with `Sublime`.
So, here's how my new `vscode` setup looks like:

![sobolevn's vscode for Elixir](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/vscode-elixir.png)

And `Vue`:

![sobolevn's vscode for Elixir](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/vscode-vue.png)

Here's a list of packages I use:

- `ayu` theme and `A File Icon` icons
- `Elixir` syntax highlighting
- [`Vetur`](https://github.com/vuejs/vetur) for `Vue` features
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- `editoconfig` integration
- `wakatime` integration


## External services

I use [`wakatime`](https://wakatime.com/) for all my projects. It is a great tool to track time of your work. It is a free service.

There are three main plugins I am using:

1. For `vscode`: https://wakatime.com/sublime-text
2. For `idea`: https://wakatime.com/intellij-idea
3. For `zsh`: https://github.com/sobolevn/wakatime-zsh-plugin#wakatime-zsh-plugin


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
