FROM debian:latest

MAINTAINER Tienslebien <etienne@crombez.info>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y vim-nox zsh git gawk most less

# Install oh-my-zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh &&\
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

ADD dotfiles/zshrc        /root/.zshrc
ADD dotfiles/my.zsh-theme /root/.oh-my-zsh/custom/my.zsh-theme
ADD dotfiles/gitconfig    /root/.gitconfig
ADD dotfiles/vimrc        /root/.vimrc
ADD dotfiles/vim          /root/.vim

RUN mkdir -p ~/.vim/bundle &&\
    git clone git://github.com/Shougo/neobundle.vim.git root/.vim/bundle/neobundle.vim &&\
    cd ~/.vim/bundle/neobundle.vim/bin && ./neoinstall
