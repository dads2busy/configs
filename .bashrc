#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls -a'
alias g='cd ~/GoogleDrive/aschroed@vt.edu/'

alias pg='ssh -t sdal ssh 192.168.56.3'
alias r='ssh -t sdal ssh 192.168.56.4'

alias sshfsgimli='sshfs aschroed@gimli.vbi.vt.edu:/ /home/aaron/Servers/Gimli'
alias sdal='sshfs aschroed@gimli.vbi.vt.edu:/storage/groups/vbishares/sdal /home/aaron/Servers/SDAL'
alias sas='sshfs aschroed@snowmane.vbi.vt.edu:/home/aschroed /home/aaron/Servers/SAS'
alias sshfsarchdata='sshfs aaron@archdata.fivehokies.com:/home/aaron /home/aaron/Servers/ArchData'
alias databackup='sshfs aschroed@snowmane.vbi.vt.edu:/home/aschroed/pgData /home/aaron/databackup'
alias sshfssnowmane='sshfs aschroed@snowmane.vbi.vt.edu:/ /home/aaron/Servers/Snowmane'
alias sshfsubupyserver='sshfs aaron@archboss.fivehokies.com:/ /home/aaron/Servers/UbuPyServer -p 2222'
alias sshfsarchmeridian='sshfs aaron@archmeridian.fivehokies.com:/ /home/aaron/Servers/ArchMeridian'

# tunnels
alias tunnelpsql='ssh -f -N -L 5432:localhost:5432 aschroed@snowmane.vbi.vt.edu'
alias tunnelr='ssh -f -N -L 8787:localhost:8787 aschroed@snowmane.vbi.vt.edu'

# ssh
alias sshsnowmane='ssh aschroed@snowmane.vbi.vt.edu'
alias ssharchdata='ssh aaron@archdata.fivehokies.com'

# manage VMs
alias runningvms='VBoxManage list runningvms'
alias startarchdata='VBoxManage startvm ArchData --type headless'
alias startubupyserver='VBoxManage startvm UbuPyServer --type headless'
alias startvdss='VBoxManage startvm VDSS --type headless'
alias startvdoe='VBoxManage startvm VDOE --type headless'
alias startschev='VBoxManage startvm SCHEV --type headless'
alias startlexiconshaker='VBoxManage startvm LEXICON-SHAKER --type headless'
alias startwinserv='VBoxManage startvm WinServ --type headless'
alias startubupyserver='VBoxManage startvm UbuPyServer --type headless'
alias startwindev='VBoxManage startvm WinDev --type headless'

alias vtvpn='/opt/java32/jre/bin/java -cp /home/aaron/.juniper_networks/NC.jar NC -h ras.cns.vt.edu -u aschroed -f /home/aaron/.juniper_networks/network_connect/config/ras.cns.vt.edu.der -L 3 -r RemoteAccessUsers -U "https://ras.cns.vt.edu/"'

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# /home/aaron/vpnscript &

export EDITOR="nano"

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

# dropbox fix
echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; 
sudo sysctl -p
clear

# added by Anaconda 2.1.0 installer
# export PATH="/home/aaron/anaconda/envs/py3k/bin:$PATH"

#export PYTHONPATH=""

alias ls='ls -lh --group-directories-first --color=auto'
alias lsa='ls -lh --group-directories-first --color=auto && ls -dlh .* --group-directories-first --color=auto'
alias ls.='ls -dlh .* --group-directories-first --color=auto'

alias commands='nano ~/Desktop/Linux\ Commands'

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
export PROJECT_HOME=$HOME/Projects


source ~/configs/mount_this_ssh.sh

export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1440x900
