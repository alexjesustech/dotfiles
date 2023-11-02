#!/usr/bin/bash

./dotdrop.sh update -f

# clean passwords and tokens
sed -i 's/export GITHUB_TOKEN=.*/export GITHUB_TOKEN=GITTOKENHERE/' dotfiles/zshrc

# Packages
#apt list --installed apt_installed_all.txt
#apt list --manual-installed apt_installed_manual.txt
#snap list snap_installed.txt
#cargo install --list > cargo_install.txt
micro -plugin list > micro_plugins.txt
code --list-extensions | xargs -L 1 echo code --install-extension > code_extensions.txt
#/usr/bin/python -m pip freeze > "system_python$(python -V).txt"

# Commit
git add dotfiles
git commit -m "Update dotfiles"
