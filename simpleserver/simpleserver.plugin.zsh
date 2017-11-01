
server() {
  
  if [[ "$1" == "http" ]]; then
    python -m SimpleHTTPServer $2
    
  elif [[ "$1" == "https" ]]; then
    python -m SimpleHTTPSServer $2
    
    
  fi
  }
alias server=server
