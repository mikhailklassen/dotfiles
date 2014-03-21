# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it will load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mikhail"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh

## SETTINGS
# Set the auto completion on
autoload -U compinit
compinit
 
setopt correctall
setopt autocd
setopt auto_resume
 
# Enable the extgended globbing features
setopt extendedglob
 
# Set some ZSH styles
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

HISTFILE=~/.zsh-histfile
HISTSIZE=1000
SAVEHIST=1000
 
## Aliases
alias ls='ls -hX --group-directories-first --color' # I like color
alias l='ls -lFh'     # size,show type,human readable
alias la='ls -lAFh'   # long list,show almost all,show type,human readable
alias lr='ls -tRFh'   # sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   # long list,sorted by date,show type,human readable
alias grep='grep --color=always'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias less='less -R'                      # less, but with colours!
alias del='gvfs-trash'             # move to trash rather than delete forever
alias kp='keepassx >& /dev/null &'
alias handbrake='ghb'
alias find='find . 2>/dev/null'    # silence errors, e.g. Permission denied for certain folders
alias ipy='ipython --pylab'

# Verbose actions
alias mv='mv -v'
alias cp='cp -v'
alias ln='ln -v'
alias rm='rm -v'
alias wget='wget --timeout 10'

# Applications
alias mendeley='mendeleydesktop'
alias sage='~/bin/sage-4.6.1/sage'
alias physserv='ssh -YC klassm@physserv.mcmaster.ca'
#alias visit='visit -assume_format FLASH'
alias visitgui='/home/klassm/bin/visit2_3_2.linux-intel/bin/visit -assume_format FLASH &'
alias visitcli='/home/klassm/bin/visit2_3_2.linux-intel/bin/visit -cli -nowin -assume_format FLASH'


# Aliases for HPC access
alias requin='ssh -Y -i ~/.ssh/id_dsa klassm@requin.sharcnet.ca'
alias saw='ssh -Y -i ~/.ssh/id_dsa klassm@saw.sharcnet.ca'
alias orca='ssh -Y -i ~/.ssh/id_dsa klassm@orca.sharcnet.ca'
alias bramble='ssh -Y -i ~/.ssh/id_dsa klassm@bramble.sharcnet.ca'
alias kraken='ssh -Y -i ~/.ssh/id_dsa klassm@kraken.sharcnet.ca'
alias scinet='ssh -l klassm login.scinet.utoronto.ca'

## Environmental Variables
export repo=https://subversion.sharcnet.ca/svn-pudritz/repo
export thistle_repo=svn+ssh://klassm@thistle
export SVN_EDITOR=vim
export EDITOR=vim
export VISUAL=vim
export CVS_RSH=ssh
export CVSEDITOR=vim
export CVSROOT=:ext:cvs@thistle:/home/cvs/cvs
export FDCT=/usr/local/CurveLab
export FFTW=/usr


# Locations
export f4=/home/klassm/research/dev/FLASH4-sinks

# Custom Python Settings
export PYTHONPATH=${PYTHONPATH}:/1/home/klassm/bin/visit-2.1.0/visit2.1.0/src/lib:/home/klassm/research/code_tools/python_tools:/home/klassm/research/code_tools/elucidate/tools:/1/home/klassm/lib/pyds9:/home/klassm/local/lib/python2.6/site-packages

#export PYTHONPATH=/home/klassm/.local/lib/python2.6/site-packages/hgsubversion-1.4_27_312f36a425f0-py2.6.egg:/usr/lib/python2.6/site-packages/vimpdb-0.4.5-py2.6.egg:/usr/lib/python2.6/site-packages/vim_bridge-0.5-py2.6.egg:/usr/lib/python26.zip:/usr/lib/python2.6:/usr/lib/python2.6/plat-linux2:/usr/lib/python2.6/lib-tk:/usr/lib/python2.6/lib-old:/usr/lib/python2.6/lib-dynload:/home/klassm/.local/lib/python2.6/site-packages:/usr/lib/python2.6/site-packages:/usr/lib/python2.6/site-packages/Numeric:/usr/lib/python2.6/site-packages/PIL:/usr/lib/python2.6/site-packages/gst-0.10:/usr/lib/python2.6/site-packages/gtk-2.0:/usr/lib/python2.6/site-packages/wx-2.8-gtk2-unicode

export PAGER=less
export LESS=-r

# Custom TEX Settings
export INFOPATH=/home/klassm/usr/local/texlive/2011/texmf/doc/info
export TEXINPUTS=.:~/research/texfiles//:
export TEXMFCONFIG=$HOME/texmf

# Custom IDL Settings
export COYOTE_IDL_LIB=/home/klassm/research/code_tools/idl_tools/coyote
export GRIERSON_IDL_LIB=/home/klassm/research/code_tools/idl_tools/grierson
export KLASSEN_IDL_LIB=/home/klassm/research/code_tools/idl_tools/klassen
export FLASH2_DIR=/home/klassm/research/sandbox/FLASH2.5/trunk
export FLASH4_DIR=/home/klassm/research/sandbox/FLASH4-sinks
export XFLASH_DIR=$FLASH2_DIR/tools/fidlr2
export FLASH_IDL_ROUTINES=/home/klassm/research/code_tools/flash_IDL
export FLASH2_IDL_ROUTINES=/home/klassm/research/code_tools/flash_IDL/FLASH2
export IDL_DIR=/usr/local/itt/idl
#export IDL_PATH=${COYOTE_IDL_LIB}:${GRIERSON_IDL_LIB}:${KLASSEN_IDL_LIB}:${XFLASH_DIR}:${FLASH_IDL_ROUTINES}:${IDL_DIR}:${IDL_DIR}/lib
export IDL_PATH=${COYOTE_IDL_LIB}:${GRIERSON_IDL_LIB}:${KLASSEN_IDL_LIB}:${FLASH_IDL_ROUTINES}:${FLASH2_IDL_ROUTINES}:${IDL_DIR}:${IDL_DIR}/lib
export IDL_STARTUP=/home/klassm/research/code_tools/idl_tools/startup

# HDF5
export HDF_PATH=/home/klassm/opt/hdf/hdf5-1.8.9-shared
export LD_LIBRARY_PATH=${HDF_PATH}/lib

## Functions
kile() { /usr/bin/kile "$@" &>/dev/null & }
gwenview() { /usr/bin/gwenview "$@" &>/dev/null & }
see() { /usr/bin/gwenview "$@" &>/dev/null & }
view() { /usr/bin/gwenview "$@" &>/dev/null & }
fm() { /usr/bin/dolphin . &>/dev/null & }
okular() { /usr/bin/okular "$@" &>/dev/null & }
play() { gxine "$@" &>/dev/null & }
calc() { echo "$*" | bc -l; }

## Additions to the path
pathdirs=(
	.
	/home/klassm/usr/bin
	/home/klassm
	/home/klassm/bin
	/home/klassm/usr/local/texlive/2011/bin/i386-linux
	/home/klassm/research/code_tools/disperse/bin
	/usr/local/intel/idb/9.0/bin
	/usr/local/intel/cc/9.0/bin
	/usr/local/intel/fc/9.0/bin
	/usr/local/bin
	/sbin
	/usr/sbin
	/bin
	/usr/bin
	/usr/X11R6/bin
	/lib
	/usr/local/matlab/bin
)
for dir in $pathdirs; do
	if [ -d $dir ]; then
		path+=$dir
	fi
done

# Reset LS_COLORS
eval `dircolors ~/.dir_colors`
