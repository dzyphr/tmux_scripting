tmux_split_screen_h(){
	local session=$1
	tmux split-window -h -t "$session"
}

tmux_2path_hsplit(){
	tmux new -s $1 -d
	tmux send-keys -t $1 "cd $2" C-m
	tmux_split_screen_h $1
	tmux send-keys -t $1 "cd $3" C-m
	tmux attach-session -t $1
}

sn="sessionname"
path1="~/Documents"
path2="~/Downloads"

tmux_2path_hsplit "$sn" "$path1" "$path2"



