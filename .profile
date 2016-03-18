if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/taylorqj/.sdkman"

[[ -s "/Users/taylorqj/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/taylorqj/.sdkman/bin/sdkman-init.sh"

[[ -s $HOME/.nvm/nvm.sh  ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

