if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/taylorqj/.sdkman"
[[ -s "/home/taylorqj/.sdkman/bin/sdkman-init.sh" ]] && source "/home/taylorqj/.sdkman/bin/sdkman-init.sh"
