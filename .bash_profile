for file in "$(dirname "$BASH_SOURCE")"/.bash/{exports,options,private,aliases,functions,prompt}; do
  [ -r "$file" ] && source "$file";
done;
unset file;
