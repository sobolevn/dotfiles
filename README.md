# sobolevn's dotfiles

![sobolevn's dotfiles](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/hyper.png)

Here are some articles I wrote about my environment:

- ["Instant +100% command line productivity boost"](https://dev.to/sobolevn/instant-100-command-line-productivity-boost)
- ["Using better CLIs"](https://dev.to/sobolevn/using-better-clis-6o8)
- ["6 mac apps that fit everyone"](https://sobolevn.me/2019/07/6-best-mac-apps)

And talks / podcasts:

- ["Veged and Code podcast"](https://www.youtube.com/watch?v=nEF0I3VkmPA) \[in RU\]


## Contents

What's in there?

- all my `brew` dependencies including: applications, fonts, etc. See [`Brewfile`](https://github.com/sobolevn/dotfiles/blob/master/Brewfile)
- all my `macOS` configuration. See [`macos`](https://github.com/sobolevn/dotfiles/blob/master/macos/)
- all my shell configuration, including [my own `sobole`](https://github.com/sobolevn/sobole-zsh-theme) theme. See [`shell/`](https://github.com/sobolevn/dotfiles/tree/master/shell) and [`config/zshrc`](https://github.com/sobolevn/dotfiles/blob/master/config/zshrc)
- all my `vscode` configuration, including [my own `pustota`](https://github.com/sobolevn/pustota) theme. See [`vscode/`](https://github.com/sobolevn/dotfiles/tree/master/vscode)
- all my [QuickLook](https://github.com/sindresorhus/quick-look-plugins) customizations and [dev utilities](https://github.com/sbarex/SourceCodeSyntaxHighlight)


## Main principles

- Minimalism in everything: tooling, styling,
- Simplicity
- Reduced visual noise, only important things should be shown
- "Please, do not touch my code": no auto-formatting or code flow interruptions
- History is valuable, let's preserve it everywhere we can
- Security: do not share anything with anyone


## Installation

We are using [`dotbot`](https://github.com/anishathalye/dotbot/)
to set things up. Steps:

0. Decide what you want to install: comment out `run_dotbot 'steps/...'` that you don't need
1. Clone this repo with: `git clone https://github.com/sobolevn/dotfiles dotfiles`
2. `cd dotfiles/`
3. Run: [`bash ./install`](https://github.com/sobolevn/dotfiles/blob/master/install)


## VSCode

I loved [my `Sublime`](https://github.com/sobolevn/dotfiles/tree/34ee628e515f7fc782566b946a3b4ca906bad7ba/sublime3-conf).
It was fast and beautiful.
The main reason is that `Sublime` is almost unmaintained.
Packages are also abandoned.

So, I have switched to [`vscode`](https://formulae.brew.sh/cask/visual-studio-code).
It solved almost all issues I had with `Sublime`.
Here's how my new `vscode` setup looks like, using my own theme called [`pustota`](https://github.com/sobolevn/pustota):

![sobolevn's vscode for Python](https://raw.githubusercontent.com/sobolevn/pustota/master/assets/minimal.png)

Here's [a list of packages](https://github.com/sobolevn/dotfiles/blob/master/vscode/install.sh) I use:

- [`pustota`](https://github.com/sobolevn/pustota) theme
- [`Python`](https://github.com/Microsoft/vscode-python) plugin
- [`editorconfig`](https://editorconfig.org/) integration

I try to keep my `vscode` setup as simple as possible.
It was also heavily influenced by [`makevscodeawesome`](https://makevscodeawesome.com/).

I also use [powered-up `nano`](https://github.com/sobolevn/dotfiles/blob/master/config/nanorc)
for in-terminal editing.


## CLI

I am using [`hyper`](https://hyper.is/) as my main terminal.
I am using [`zsh`](https://github.com/zsh-users/zsh) with [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)
as the main shell.
And [`zplug`](https://github.com/zplug/zplug) to manage shell [plugins](https://github.com/sobolevn/dotfiles/blob/master/config/zplugrc).
I also have a some tools / scripts / aliases to make my working experience better.
But, I try to keep them minimal: only ones I truly use. Including: `bat`, `zoxide`, `fzf`, `ag`, `fd`, `delta`, `gh`, `tig`, and many others.

I mainly work with:

- `python`

I also have several other languages installed.
But I don't use them on a daily basis:

- `node`
- `elixir`
- `rust`

### fzf goodies

I use `fzf` for several [code completion](https://github.com/sobolevn/dotfiles/blob/master/shell/.completions) tasks:

- `tab` to autocomplete probably all the things using [`fzf-tab`](https://github.com/Aloxaf/fzf-tab)

![fzf-tab](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/fzf-tab.png)

Multiple tools have custom completions like: `zoxide`, `make`, `killall`
that work well with `fzf`'s preview feature.

- `ctrl+r` allows me to fuzzy search command history

![fzf-history](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/fzf-history.png)

- `ctrl+t` allows to fuzzy search files and dirs in the current tree to include paths in commands with instant previews for text files (content) and directories (inner tree)

![fzf-paths](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/fzf-paths.png)

- `ctrl+g` to work with [`fzf-git`](https://github.com/junegunn/fzf-git.sh)

![fzf-git](https://raw.githubusercontent.com/sobolevn/dotfiles/master/media/fzf-git.png)


## Apps

I am using [`brew`](https://brew.sh/) to install all free apps for my mac.
I also sync apps from AppStore with `brew` via [`mas`](https://formulae.brew.sh/formula/mas),
so the resulting [`Brewfile`](https://github.com/sobolevn/dotfiles/blob/master/Brewfile) contains everything.


## Infrastructure

I try to containerize everything.
So, [`docker`](https://formulae.brew.sh/cask/docker) is my main development and deployment tool.


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!
