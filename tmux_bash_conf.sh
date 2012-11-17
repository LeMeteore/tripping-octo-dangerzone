#!/bin/sh
# creates a new tmux session, detaches it and names it hawkhost
tmux new-session -d -s hawkhost

# create a new window, target the session hawkhost, window ID=1, name window Server1, execute command ssh
tmux new-window -t hawkhost:1 -n 'Server1' 'ssh patrick@192.168.2.3'
#tmux new-window -t hawkhost:2 -n 'Server2' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:3 -n 'Server3' 'ssh root@10.x.x.x'
#tmux new-window -t hawkhost:4 -n 'Server4' 'ssh root@10.x.x.x'
tmux new-window -t hawkhost:5 -n 'Server5' 'mysql -u root -pnsukami'
 
# select window ID=1, in hawkhost session
tmux select-window -t hawkhost:1
# attach the terminal with 256 colors and attach to the session hawkhost.
tmux -2 attach-session -t hawkhost