#!/bin/sh
#
# set up asdf plugins and such

echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc

asdf plugin-add python https://github.com/danhper/asdf-python.git

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
