# Dotfiles

My dotfiles and a list of software I use.

These are for my use mainly for setting up/backing up different computers.

Take anything you want, but at your own risk.

## How to install

The dotfiles are managed by `gnu stow`. Install [git](https://git-scm.com/) and [gnu stow](https://www.gnu.org/software/stow/).

Clone repo to a new machine

```bash
git clone https://github.com/thatmlopsguy/dotfiles.git ~/.dotfiles
```

Run `bootstrap.sh` to symlink all the config with `stow`.

```bash
export DOTFILES=~/.dotfiles
cd $DOTFILES
./bootstrap.sh
```

## Requirements

Set zsh as your login shell:

```sh
chsh -s $(which zsh)
```

A [Nerd Font](https://www.nerdfonts.com/) installed and enabled in your terminal (for example, try the FiraCode Nerd Font).

Visit `https://webinstall.dev/nerdfont` and follow the instructions to install the Nerd Font.

## Utilities

This is a long list, so here is a table of content with tl;dr summaries:

- [Rust Utilities](https://rustutils.com/)
- [starship](https://starship.rs/) - great cross shell prompt that requires no setup
- [fzf](https://github.com/junegunn/fzf) - general-purpose fuzzy search
- [lf](https://github.com/gokcehan/lf) - terminal file manager
- [yazi](https://github.com/sxyazi/yazi) - terminal file manager
- [tokei](https://github.com/XAMPPRocky/tokei) - count your code, quickly (replacement for cloc).
- [procs](https://github.com/dalance/procs) - modern replacement for ps written in Rust
- [tealdeer](https://github.com/dbrgn/tealdeer) - fast implementation of tldr in Rust
- [fd](https://github.com/sharkdp/fd)- like find but better
- [dust](https://github.com/bootandy/dust) - more intuitive version of du in rust
- [duf](https://github.com/muesli/duf) - a better 'df' alternative 
- [lsd](https://github.com/lsd-rs/lsd) - next gen ls command 
- [git delta](https://github.com/dandavison/delta) - diff viewer with syntax highlighting
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep) - like grep but better

### package manager

- [asdf](https://asdf-vm.com/) - multiple Runtime Version Manager
- [homebrew](https://brew.sh/)
- [devbox](https://www.jetify.com/devbox) - package manager using Nix

### system monitoring tools

- [fastfetch](https://github.com/fastfetch-cli/fastfetch) - neofetch like system information tool
- [htop](https://htop.dev/)
- [btop](https://github.com/aristocratos/btop)
- [nvitop](https://github.com/XuehaiPan/nvitop) - interactive NVIDIA-GPU process viewer
- [ctop](https://github.com/bcicen/ctop) and [lazydocker](https://github.com/jesseduffield/lazydocker) for Docker
- [ncdu](https://dev.yorhel.nl/ncdu) - disk usage analyzer
- [bottom](https://github.com/ClementTsang/bottom)


## References

Articles and other links that helped me create these dotfiles:

- [andrenbrandao/dotfiles](https://github.com/andrenbrandao/dotfiles/)
