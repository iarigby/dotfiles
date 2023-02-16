function psgrep() {
 ps aux | grep $1 | grep -v grep
}

function killgrep() {
 kill -9 $(psgrep $1 | awk '{print $2}')
 psgrep $1
}

function sum() {
 awk '{sum += $1;} END {print sum;}'
}

function memusg() {
 ps -o pid,user,%mem,command ax | grep $1 | awk '{print $3}' | sum
}

function clone_my_repo() {
	git clone git@github.com:iarigby/$1
}

function clip() {
	xclip -sel clip < $1
}

alias gcm=clone_my_repo 

function git() {   
        [[ "$(pwd)" == "$HOME" ]] && yadm "$@" || /usr/bin/git "$@"
}

function bandit() {
	ssh -p 2220 bandit$1@bandit.labs.overthewire.org
}

function bsnm() {
	basename $(PWD)
}

function download_wav_tracks_from_list() {
	cat ~/Music/Tracks/list.txt | grep -v '^#' | grep -v '^$' | xargs -I {} deemix -p ~/Music/Tracks/all --bitrate wav {}
}


function download_flac_tracks_from_list() {
	cat ~/Music/Tracks/list.txt | grep -v '^#' | grep -v '^$' | xargs -I {} deemix -p ~/Music/Tracks/all --bitrate flac {}
}

function project_viewer() {
	cd ~/dev/dt/project-viewer
	open_address_with_delay 2 http://127.0.0.1:5000 &
	pipenv run app
}

function open_address_with_delay() {
	sleep $1
	open $2
}
