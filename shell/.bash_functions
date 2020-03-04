# Archives - create new
g:cli_a. () {

  if [ "$#" -ne 0 ] ; then
    FILE="$1"
    case "$FILE" in
      *.tar.bz2|*.tbz2) shift && tar cvjf "$FILE" $* ;;
      *.tar.gz|*.tgz)   shift && tar cvzf "$FILE" $* ;;
      *.tar)            shift && tar cvf "$FILE" $* ;;
      *.zip)            shift && zip -r "$FILE" $* ;;
      *.rar)            shift && rar "$FILE" $* ;;
      *.7z)             shift && 7zr a "$FILE" $* ;;
      *)                echo "'$1' cannot be squeezed via squeeze()" ;;
    esac
  else
    echo "usage: squeeze [file] [contents]"
  fi

}

# Archives - Extract
g:cli_a.. () {

  if [ $# -lt 1 ]
  then
    echo Usage: extract file
    return 1
  fi
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.war|*.jar) unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi

}

# Ansible: execute command on remote host.
g:cli_ax () {

  playbook_file=$1
  target_hosts=$2
  ansible-playbook --private-key=$HOME/.ssh/id_rsa -i hosts -u root "$playbook_file" --limit "$target_hosts"

}

g:cli_ax? () {

  playbook_file=$1
  target_hosts=$2
  ansible-playbook --private-key=$HOME/.ssh/id_rsa -i hosts -u root -vvvv "$playbook_file" --limit "$target_hosts" --list-hosts --check

}

# Files/Folders: Make folder and enter
g:cli_cd! (){

  if [ -f "$1" ] ; then
    echo "File $1 exists~"
    return
  fi
  if [ ! -d "$1" ] ;then
    mkdir -p "$1"
    cd "$1"
  else
    echo "$1 exists~"
  fi

}

# Functions: Introspection - list the available functions
g:cli_fl () {

  local functionlist=`compgen -A function | grep g:cli_`; # Get function list
  echo -e "$functionlist \n"

}

# Git - config
g:cli_g. () {

  git config --global user.name "$1" && git config --global user.email "$2"

}

# Git - link local repo to remote origin
g:cli_g? () {

  git remote add origin "$1" && git push -u origin master

}

# Git: Find files in the repository that are redundant and not referenced anywhere in the application's code.
g:cli_ga? ()
{

  for FILE in $(git ls-files ./$1); do
      git grep $(basename "$FILE") > /dev/null || echo "would remove $FILE"
  done

}

# Git: Revert both the local and remote to a previous working commit.
g:cli_gz! ()
{

  git reset --hard $1 && git clean -f && git push -f origin $2

}

# PHP: Start built-in web server.
g:cli_qd ()
{

  php -S localhost:8000 -t "${1:-.}"

}


# Vagrant: Update all installed plugins
g:cli_vx* () {

  for plugin in $(vagrant plugin list | cut -f1 -d' '); do
    vagrant plugin install $plugin;
  done;

}
