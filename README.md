# sobolevn's dotfiles

![sobolevn's dotfiles](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/hyper.png)

Here are some articles I wrote about my environment:

- ["Instant +100% command line productivity boost"](https://dev.to/sobolevn/instant-100-command-line-productivity-boost)
- ["Using better CLIs"](https://dev.to/sobolevn/using-better-clis-6o8)
- ["6 mac apps that fit everyone"](https://sobolevn.me/2019/07/6-best-mac-apps)


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/sobolevn/dotfiles/blob/master/Brewfile)
- all my `macOS` configuration. See [`macos`](https://github.com/sobolevn/dotfiles/blob/master/macos)
- all my shell configuration including [my own `sobole`](https://github.com/sobolevn/sobole-zsh-theme) theme. See [`shell/`](https://github.com/sobolevn/dotfiles/tree/master/shell) and [`config/zshrc`](https://github.com/sobolevn/dotfiles/blob/master/config/zshrc)
- all my `vscode` configuration. See `vscode/`


## Installation

We are using [`dotbot`](https://github.com/anishathalye/dotbot/)
to set things up. Steps:

1. Clone this repo
2. `cd` into `dotfiles/` folder
3. Run: `./install`


## CLI

I am using both [`hyper`](https://hyper.is/)
and default `Terminal App` as terminal emulators.
I am using `zsh` with [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)
as a main shell.
And [`antibody`](https://github.com/getantibody/antibody) to manage shell plugins.
I also have a lot of tools to make my working experience better.

I mainly work with three stacks:

- `python`
- `node` + `vue` + `typescript`
- `elixir`

So, they are configured nice and smoothly.
You will have configured version managers, best practices, and useful tools.
And some productivity hacks!

I also have several other languages installed.
But I am not using them on a daily basis.


## Apps

I am using `brew` to install all free apps for my mac.
I also sync apps from AppStore with `brew`,
so the resulting [`Brewfile`](https://github.com/sobolevn/dotfiles/blob/master/Brewfile) contains everything.


## Infrastructure

I try to containerize everything.
So `docker` is my main development and deployment tool.
You can install it from its [official site](https://docs.docker.com/docker-for-mac/) (`brew` [version](https://github.com/Homebrew/homebrew-core/blob/master/Formula/docker.rb) is also an option).

I prefer to use `edge` version of `docker`.
So, you will have to download it manually.

However, I also use several databases and other services locally:

- `postgresql` (with `postgis`)
- `redis`

I use this setup for small and simple projects.
Other stuff is always dockerized.


## VS Code

I loved my `Sublime`. It was fast and beautiful.
But I have switched to `vscode`.
The main reason is that `Sublime` is almost unmaintained.
Packages are also abandoned.

So, I have switched to `vscode`.
It solved almost all issues I had with `Sublime`.
Here's how my new `vscode` setup looks like:

![sobolevn's vscode for Python](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/vscode-python.png)

Here's [a list of packages](https://github.com/sobolevn/dotfiles/blob/master/vscode/install.sh) I use:

- [`ayu`](https://github.com/ayu-theme/vscode-ayu) theme with modifications and `A File Icon` icons
- `Elixir` syntax highlighting
- [`Vetur`](https://github.com/vuejs/vetur) for `Vue` features
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- [`Rust`](https://github.com/rust-lang/rls-vscode) plugin
- `editoconfig` integration

I also use [powered-up `nano`](https://github.com/sobolevn/dotfiles/blob/master/config/nanorc)
for in-terminal editing.


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
