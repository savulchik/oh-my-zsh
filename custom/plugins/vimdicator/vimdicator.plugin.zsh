function __vimdicator() {
  PARENT_PROCESS_COMMAND=$(ps -p $PPID -o comm=)

  if [ $PARENT_PROCESS_COMMAND = "vim" ]; then
    echo "[vim]"
  fi
}

# define right prompt, if it wasn't defined by a theme
if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
  RPS1='$(__vimdicator)'
fi

