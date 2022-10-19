# Bash profile

## ENVIRONMENT VARIABLES

## ALIAS
# git - also, use as a reference table
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias ga='git add' # expecting <file>
alias gc='git commit -m' # expecting <msg>
alias gll='git pull origin' # expecting <branch> (default main)
alias gsh='git push origin' # expecting <branch> (default main)

alias ginit='git init' # expecting *blank*
alias gremote='git remote' # expecting: '-v' (for listing) | add origin <url> (for adding new origin) | set-url origin <url> (for setting the origin anew)
alias gclone='git clone' # expecting <url>
alias gbranch='git branch' # expecting: (*blank* - for listing) | <name> (for creating new branch)
alias gout='git checkout' # expecting: <branch> (for switching to branch) | -b <branch> (for switching to new branch)
alias gmerge='git merge' # expecting <branch> (for merging branch into master)

# deno
alias denodev='deno run --allow-net --allow-read --watch' # expecting <script_arg>

# general
alias cmds="compgen -ac | grep" # expecting <filter> (it's generaly too big if not specified)
alias ls='ls --color=always'
alias la='ls -la'
alias l.="ls -ad .[!.]?*"
alias r='fc -s' # expecting [<old>=<new>] [<starting_with>] (to run previous command starting with given', and with substitution)
alias rm='rm -i'
alias mv='mv -i'
alias s='source'
alias ebashrc="code $bashrc"
alias sbashrc="source $bashrc"
alias cdbin='cd ~/bin'
alias cdmat="cd $mat"
alias cdpro="cd $proj"


# general (as functions)
function cd {
    builtin cd "$@" && ls
    # if [ -e .bashrc.local ]
    # then 
    #     . .bashrc.local
    # fi
}

# Prompt
    # Prompt line
PROMPTCOLOR="\e[1;95m"
TEXTCOLOR="\e[0m"
PS1="\n(\!) ${PROMPTCOLOR}\w > ${TEXTCOLOR}"
PS2="${PROMPTCOLOR}> ${TEXTCOLOR}"
PROMPT_DIRTRIM=2