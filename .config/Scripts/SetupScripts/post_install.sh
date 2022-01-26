git clone --depth 1 https://github.com/renzhamin/configs-core ~/configs-core
git --git-dir=${HOME}/configs-core --work-tree=/shome reset --hard
sh /shome/getconfig.sh
sh ~/.config/Scripts/SetupScripts/zsh_setup.sh
