for file in "$(dirname "$BASH_SOURCE")"/.bash/{shell,commands,prompt,aliases,extra}; do
  [ -r "$file" ] && source "$file";
done;
unset file;
