#!/bin/sh
#
# set up asdf plugins and such

asdf plugin add python
asdf plugin add ruby
asdf plugin add terraform
asdf plugin add nodejs
asdf plugin add elixir
asdf plugin add erlang
asdf plugin add rust

asdf install
asdf reshim
