if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

[[ -s $HOME/.nvm/nvm.sh  ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/taylorqj/.sdkman"
[[ -s "/home/taylorqj/.sdkman/bin/sdkman-init.sh" ]] && source "/home/taylorqj/.sdkman/bin/sdkman-init.sh"
