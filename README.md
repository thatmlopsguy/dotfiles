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

## Utilities

- [asdf](https://asdf-vm.com/)
- [Rust Utilities](https://rustutils.com/)
- [bottom](https://github.com/ClementTsang/bottom)
- [nvitop](https://github.com/XuehaiPan/nvitop)
- [fzf](https://github.com/junegunn/fzf)
- [homebrew](https://brew.sh/)
- [lf](https://github.com/gokcehan/lf) - terminal file manager
- [yazi](https://github.com/sxyazi/yazi) - terminal file manager
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [Tokei](https://github.com/XAMPPRocky/tokei)
- [procs](https://github.com/dalance/procs)
- [tealdeer](https://github.com/dbrgn/tealdeer)
- [fd](https://github.com/sharkdp/fd)
- [dust](https://github.com/bootandy/dust)
- [duf](https://github.com/muesli/duf)
- [lsd](https://github.com/lsd-rs/lsd)
- [git delta](https://github.com/dandavison/delta)

## References

Articles and other links that helped me create these dotfiles:

- [andrenbrandao/dotfiles](https://github.com/andrenbrandao/dotfiles/)