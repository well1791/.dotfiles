! is_cmd "explorer.exe" && return 0

alias open="explorer.exe"

if is_cmd wslvar; then
  win_home=`wslvar USERPROFILE`
  eval 'export "WIN_HOME=${win_home}"'
  eval 'export "WIN_DOWN=${win_home}\\Downloads"'

  if is_cmd wslpath; then
    export_var "LOCAL_WIN_HOME" `wslpath ${win_home}` is_dir
  fi
fi
