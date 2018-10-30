export_path "${HOME}/.yarn/bin"

# source: https://github.com/creationix/nvm/issues/539#issuecomment-403661578

# Install zsh-async if it’s not present
# source: https://github.com/creationix/nvm/issues/539#issuecomment-403661578
if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
	if [[ ! -a ~/.zsh-async ]]; then
		git clone git@github.com:mafredri/zsh-async.git ~/.zsh-async
	fi

	source ~/.zsh-async/async.zsh
fi

export NVM_DIR="$HOME/.nvm"
load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1
