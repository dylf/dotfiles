# dotfiles
Dotfiles that are my own. Managed by [yadm](https://yadm.io/), a fancy git bare repo wrapper.

These are mainly so I can keep my dotfiles synced across my machines.

Right now I am on [Pop!_Os](https://pop.system76.com/) on most machines so my config will reflect that.

## Getting started

### Install yadm
`yadm` is available in package managers.

Can also be grabbed with `curl`:
```
curl -fsSLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/.local/bin/yadm
```

### Clone this repo

Once `yadm` is installed clone the repo.

SSH:
```
yadm clone git@github.com:dylf/dotfiles.git
```

HTTPS:
```
yadm clone https://github.com/dylf/dotfiles.git
```


### Initialize the submodules

This repo is using submodules to include plugins and programs I use. After an
inital clone run the following:
```
yadm submodule update --init --recursive
```

## Useful things I may do

Sometimes you just need your `.vimrc` on the machine you're on.
```
curl -fsSLo ~/.vimrc https://raw.githubusercontent.com/dylf/dotfiles/master/.vimrc
```

or your `.bashrc`
```
curl -fsSLo ~/.bashrc https://raw.githubusercontent.com/dylf/dotfiles/master/.bashrc
```
