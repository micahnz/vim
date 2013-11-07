vim
===

```
git clone https://github.com/michaelmitchell/vim.git

git submodule init
git submodule update

ln -s autoload ~/.vim/autoload
ln -s bundles ~/.vim/bundle
ln -s vimrc ~/.vimrc
ln -s jshintrc ~/.jshintrc

// bashrc
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    ps1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi

PS1='\$ '
ps1='\$ '
```
