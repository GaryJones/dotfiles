# Dotfiles

## Using

~~~sh
cd
git clone https://github.com/GaryJones/dotfiles.git dotfiles
dotfiles/make.sh
~~~

This will copy any files about to be overwritten into `dotfiles_old`. It then adds symlinks for each of the files named at the top of `make.sh` from `~` to `~/dotfiles`.

It will also install ZSH, and [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh).

There's a commented out call to install Composer too...
