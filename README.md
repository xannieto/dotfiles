# Dotfiles

This repository contains all dotfiles for my system. 

# Requirements

In order to use this repository, you need to install the following software:
    - Git
    - GNU Stow

# Installation

First, checkout this repository:

```
git clone git@github.com:xannieto/dotfiles.git 
```

And inside `dotfiles`, we can create all the symbolic links with:

```
stow .
```

# Useful references

- A video tutorial which is based this repository: [Stow has forever changed the way I manage my dotfiles](https://youtu.be/y6XCebnB9gs?si=bvqFfClRbvNqqUOe).
- GNU Stow [documentation](https://www.gnu.org/software/stow/manual/stow.html).
