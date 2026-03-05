#!/usr/bin/env bash
# Bootstrap script for setting up dotfiles using GNU Stow.
# This script checks for the presence of GNU Stow, sets up the necessary environment variables, and stows the specified folders.
#
# Via https://github.com/elithrar <matt@eatsleeprepeat.net>
# Sets up a macOS and/or Linux based dev-environment.
# Inspired by https://github.com/minamarkham/formation (great!)

# Configuration
INTERACTIVE=false
DOTFILES_REPO="https://github.com/thatmlopsguy/dotfiles"
DOTFILES="${HOME}/code/github/dotfiles"
DEFAULT_SHELL="/usr/bin/zsh"
ENABLE_OH_MY_ZSH=true
ENABLE_BASH_IT=false
ENABLE_STARSHIP=false
ENABLE_DEVBOX=true
ENABLE_ASDF=true
ENABLE_MISE=true
ENABLE_HOMEBREW=true

# ------
# Setup
# ------
cat <<EOF
Running...
 _                 _       _                              _
| |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __  _ __   ___| |__
| '_ \\ / _ \\ / _ \\| __/ __| __| '__/ _\` | '_ \\| '_ \\ / __| '_ \\
| |_) | (_) | (_) | |_\\__ \\ |_| | | (_| | |_) | |_) |\\__ \\ | | |
|_.__/ \\\___/ \\\___/ \\\__|___/\\__|_|  \\\__,_| .__/| .__(_)___/_|
                                        |_|   |_|

-----
- Sets up a macOS or Linux based development machine.
- Safe to run repeatedly (checks for existing installs)
- Repository at ${DOTFILES_REPO}
- Fork as needed
- Deeply inspired by https://github.com/minamarkham/formation
-----
EOF



# Check environments
OS=$(uname -s 2>/dev/null)
echo "Operating System: $OS"

# On Linux, we may need to install some packages.
DISTRO=""
if [[ "${OS}" == "Linux" ]]; then
    if [[ -f /etc/os-release ]] ; then
        . /etc/os-release
        DISTRO=$ID
        echo "Linux Distribution: $DISTRO"
    fi
fi

# Ask for sudo
sudo -v &>/dev/null

# Update the system & install core dependencies
if [[ "${OS}" == "Linux" ]] && [[ "${DISTRO}" == "debian" || "${DISTRO}" == "ubuntu" ]]; then
    echo "Updating system packages ..."
    sudo apt update
    sudo apt -y upgrade
    sudo apt -y install build-essential apt-transport-https ca-certificates gnupg curl git stow
    echo "✅ System package updates"
fi

mkdir -p "${HOME}"/documents/{articles,notes}

# Set up repos directory
if [[ ! -d "${HOME}/code" ]]; then
    mkdir -p "${HOME}"/code/{github,gitlab,bitbucket,azure}
fi


# Clone & install dotfiles
echo "Configuring dotfiles"
if command -v stow &>/dev/null; then
    echo "✅ GNU Stow is installed."
else
    echo "❌ GNU Stow is not installed. Please install it using your package manager."
    exit 1
fi

if [[ ! -d "${DOTFILES}" ]]; then
    if command -v git &>/dev/null; then
        echo "✅ Git is installed."
    else
        echo "❌ Git is not installed. Please install it using your package manager."
        exit 1
    fi
    echo "Cloning dotfiles from ${DOTFILES_REPO} to ${DOTFILES} ..."
    git clone "${DOTFILES_REPO}" "${DOTFILES}"
    echo "✅ Dotfiles cloned successfully."
else
    echo "✅ dotfiles already cloned"
fi


# if [[ -z $STOW_FOLDERS ]]; then
#     STOW_FOLDERS="git,tmux,zsh,bin"
# fi

# if [[ -z $DOTFILES ]]; then
#     DOTFILES=$HOME/code/github/dotfiles
#     mkdir -p "${DOTFILES}"
# fi

# STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES

# pushd $DOTFILES

# # stow folders
# for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
# do
#     echo "stow $folder"
#     stow -D $folder
#     stow $folder
# done


# --- Configure zsh
if [[ ! -d "${HOME}/.oh-my-zsh" && "${ENABLE_OH_MY_ZSH}" = true ]]; then
    echo "Installing oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    if ! grep -q "$(command -v zsh)" /etc/shells; then
        command -v zsh | sudo tee -a /etc/shells
    fi
    chsh -s "$(command -v zsh)"
else
    echo "✅ oh-my-zsh already installed"
fi

# Install Mise
if ! command -v mise &>/dev/null && [[ "${ENABLE_MISE}" = true ]]; then
    echo "Installing Mise ..."
    curl -fsSL https://mise.run | sh
else
    echo "✅ Mise already installed."
fi

# Install Homebrew
if ! command -v brew &>/dev/null && [[ "${ENABLE_HOMEBREW}" = true ]]; then
    echo "Installing Homebrew..."
    # Use NONINTERACTIVE=1 to run without prompts, matching the script's style.
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to the PATH for the rest of this script's execution.
    # The location is architecture-dependent.
    if [[ -x "/opt/homebrew/bin/brew" ]]; then # Apple Silicon macOS
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -x "/usr/local/bin/brew" ]]; then # Intel macOS
        eval "$(/usr/local/bin/brew shellenv)"
    elif [[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then # Linux
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    fi
    echo "✅ Homebrew installed"
else
    echo "✅ Homebrew/Linuxbrew already installed."
fi

# --- Homebrew packages
if [[ "${ENABLE_HOMEBREW}" = true ]]; then
    echo "Installing Homebrew packages..."
    brew install max-sixty/worktrunk/wt
    echo "✅ Homebrew packages installed."
fi

# Install starship
if ! command -v starship &>/dev/null && [[ "${ENABLE_STARSHIP}" = true ]]; then
    echo "Installing starship ..."
    sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes
else
    echo "✅ starship already installed."
fi

# Install Rust via rustup
if ! command -v rustc &>/dev/null; then
    echo "Installing Rust via rustup ..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
else
    echo "✅ Rust already installed."
fi

# Install uv
if ! command -v uv &>/dev/null; then
    echo "Installing uv ..."
    curl -LsSf "https://astral.sh/uv/install.sh" | sh
else
    echo "✅ uv already installed."
fi

echo "All done! Visit ${DOTFILES_REPO} for the full source & related configs."
