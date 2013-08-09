###################
# Mikhail Klassen #
###################
source /usr/local/etc/.cshrc

# Custom aliases
alias setprompt 'set prompt="> ${cwd} > "'
setprompt                                 	   # to set the initial prompt
alias cd        'chdir \!* && setprompt'  	   # change prompt to reflect current directory
alias ls        'ls --color'              	   # use colours when listing directory contents
alias untar     'tar -xf'                	   # quick way to unpack a tarball
alias del       'gvfs-trash'          	       # move to trash rather than delete forever
alias kp        'keepassx >& /dev/null &'      # launch keypassX
alias handbrake 'ghb'                          # alias for GNU Handbrake: a video converstion frontend for ffmpeg
alias cdiff     'diff --ignore-all-space -b -B'
alias less      'less -R'                      # less, but with colours!
alias grep      'grep --color=always'          # grep, but with colours!
alias fm        'dolphin . >& /dev/null'       # open file manager and redirect sterr and stout to /dev/null
alias see       'gwenview \!:1 >& /dev/null &'
alias view      'gwenview \!:1 >& /dev/null &'
alias play      'gxine \!:1 >& /dev/null &'
alias kile      'kile \!:1 >& /dev/null &'
alias okular    'okular \!:1 >& /dev/null &'
alias ipy       'ipython --pylab'

# Aliases for HPC access
alias requin    'ssh -YC -i ~/.ssh/id_dsa klassm@requin.sharcnet.ca'
alias saw       'ssh -YC -i ~/.ssh/id_dsa klassm@saw.sharcnet.ca'
alias orca      'ssh -YC -i ~/.ssh/id_dsa klassm@orca.sharcnet.ca'
alias bramble      'ssh -YC -i ~/.ssh/id_dsa klassm@bramble.sharcnet.ca'
alias scinet    'ssh -l klassm login.scinet.utoronto.ca'

# Added paths
set path = (. /home/klassm/usr/bin /home/klassm /home/klassm/bin /home/klassm/usr/local/texlive/2011/bin/i386-linux /usr/local/intel/idb/9.0/bin /usr/local/intel/cc/9.0/bin /usr/local/intel/fc/9.0/bin /usr/local/bin /sbin /usr/sbin /bin /usr/bin /usr/X11R6/bin /lib /usr/local/matlab/bin)
set MANPATH = (/home/klassm/usr/local/texlive/2011/texmf/doc/man:$MANPATH)

# Custom Python Settings
setenv PYTHONPATH /1/home/klassm/bin/visit-2.1.0/visit2.1.0/src/lib:/home/klassm/research/code_tools/python_tools
setenv PAGER less
setenv LESS -r

# Custom TEX Settings
setenv INFOPATH /home/klassm/usr/local/texlive/2011/texmf/doc/info
setenv TEXINPUTS .:~/research/texfiles//:
#setenv TEXMFCONFIG $HOME/texmf

# Custom IDL Settings
setenv IDL_STARTUP /home/klassm/research/code_tools/idl_tools/startup.pro      # Set IDL to run custom startup script at launch

# Configure VISIT for FLASH
alias visitgui '/home/klassm/bin/visit2_3_2.linux-intel/bin/visit -assume_format FLASH &'
alias visitcli '/home/klassm/bin/visit2_3_2.linux-intel/bin/visit -cli -nowin -assume_format FLASH'

# Custom Versioning Settings (CVS, SVN, etc.)
setenv EDITOR vim
setenv VISUAL vim
setenv SVN_EDITOR vim
setenv CVS_RSH ssh
setenv CVSEDITOR vim
setenv CVSROOT :ext:cvs@thistle:/home/cvs/cvs
# Repositories
setenv repo https://subversion.sharcnet.ca/svn-pudritz/repo
setenv thistle_repo svn+ssh://klassm@thistle

# Other Settings
set noclobber       # Don't overwrite existing files with the redirection character ">"
