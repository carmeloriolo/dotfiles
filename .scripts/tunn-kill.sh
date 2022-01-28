for i in $(ps -ax | grep Tunnel | grep -v grep | awk -F" " '{ print $1 }'); do kill -9 $i; done;
