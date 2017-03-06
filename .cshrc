# A. set path and environment variables         03/04/2004  by sharkoasis

setenv HOME /pldata3/lijing

#for system path
setenv PATH $HOME/local/bin:$HOME/local/sbin:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/X11R6/bin:/usr/sbin
setenv LD_LIBRARY_PATH .:$HOME/local/lib64:$HOME/local/lib:/lib64:/lib:/usr/lib64:/usr/lib:/usr/local/lib64:/usr/local/lib:/usr/X11R6/lib64:/usr/X11R6/lib

#for java
setenv JAVA_HOME $HOME/jdk1.7.0_79
#setenv JAVA_HOME $HOME/jdk1.8.0_25
set path=($JAVA_HOME/bin $path)
setenv LD_LIBRARY_PATH $JAVA_HOME/lib:{$LD_LIBRARY_PATH}
setenv CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib

#for go
setenv GOROOT $HOME/tools/go
setenv GOPATH $HOME/codes/go
setenv PATH {$PATH}:$GOROOT/bin:$GOPATH/bin

#for debug
if ($?EMPYREAN_HOME) then
    source ~/.panda_gdb_64.csh
endif

set autolist

#for lang 
#setenv LANG en_US.UTF-8
 
#setenv LANG zh_CN.GB18030
#setenv GDM_LANG zh_CN.GB18030
#setenv LC_ALL zh_CN.GB18030
#setenv LANGVAR zh_CN.GB18030
#setenv XMODIFIERS @im=fcitx
#setenv QT_IM_MODULE XIM

alias en 'setenv LANG en_US.UTF-8'
alias zh 'setenv LANG zh_CN.UTF-8'

#for zeni
#setenv DISPLAY plat05:0
setenv ZENI_PORT 11001
setenv ZENI_USER_HOME .

#for internet
#setenv ftp_proxy "http://10.2.2.1:3128/"
#setenv gopher_proxy "http://10.2.2.1:3128/"
#setenv http_proxy "http://10.2.2.1:3128"
#setenv no_proxy "218.244.233.132,10.2.2.*"

#for cvs
alias cpdt "setenv CVSROOT :pserver:lijing@sax:/home/layoutCVS"
alias ceda "setenv CVSROOT :pserver:lijing@choir:/home1/edaCVS"
alias czeni "setenv CVSROOT :pserver:lijing@choir:/home1/zeniCVS"
alias cz4 "setenv CVSROOT :pserver:lijing@choir:/home1/stableCVS"
alias cz6 "setenv CVSROOT :pserver:lijing@moon:/cab/z6CVS"

#for purify
#setenv PUREOPTIONS "-cache-dir=$HOME/work/debug/purifyCache"
setenv PUREOPTIONS "-cache-dir=$HOME/work/purifyCache -local-cache-dir=$HOME/work/purifyCache -add-suppression-files=$HOME/.purify.sup -force-rebuild=no"

#for test
setenv COMMON_USER /pldata2/user
setenv PANDA_TRACE_INFO TRACE_HUNTER_SHOW

#for other
set   prompt = "[`id -nu`@`hostname -s`:`tty | cut -f4 -d/` %c]$ "
#set prompt=\[`id -nu`@`hostname -s`\]\$\
#set prompt='[%n@%m %c]$ '
limit coredumpsize 0
set history = 200
#xset b off
unset autologout
#umask 000

#------------------------------------------

# B. aliases
#for system
alias vi '~/local/bin/vim.sh'
alias rmdir '\ls -d */ | xargs -i -n1 rm -rf {}'
alias cd    'cd \!*;pwd; ls;'
alias test	'cd /home/lijing/test/z4'
alias soft	'cd /home/lijing/soft' 
alias sdt 'setenv DISPLAY plat05:0'
alias r 'rlogin'
#alias s 'source /home/lijing/.cshrc'
alias down	'cd /home/lijing/downloads'
alias sda1	'mount -t vfat -o iocharset=gb2312,uid=lijing,gid=cad /dev/sda1 /home/lijing/private/sda1/'
alias sda2      'mount -t vfat -o iocharset=gb2312,uid=lijing,gid=cad /dev/sda2 /home/lijing/private/sda2/'
alias cd..   'cd ..'
#alias rmm 'rm -f'
#alias rm 'rm -i'
alias cp 'cp -i'
alias mv 'mv -i'

alias la 'ls -Al' 
alias ls 'ls -hF --color'   
alias lx 'ls -lXB'         
alias lk 'ls -lSr'        
alias lc 'ls -lcr'      
alias lu 'ls -lur'      
alias lr 'ls -lR'      
alias lt 'ls -ltr'   
alias lm 'ls -al |more' 
alias tree 'tree -Csu' 

alias c 'clear'
alias i 'whoami'
alias h     'history'
alias e     'exit'
alias sd	'setenv DISPLAY'
alias k9	'kill -9'
alias mkiso 'mkisofs -l -r -J -quiet '

alias vc 'vncserver -depth 24 -geometry 1680x1050 -name lijing_vnc'
alias vc1 'vncserver -depth 24 -geometry 1440x900 -name lijing_home_vnc'

alias qt4.7  'source /pldata/lijing/soft/qt4.7.4/setup.csh'
alias gtk2.10  'source /home/lijing/soft/gtk2.10/setup.csh'

#for make
alias wk 'set CPWD=`pwd`; cd `echo $CPWD | sed -e "s/\(.*empyrean\)\(.*\)/\1/" `; source makesetup.csh; source ~/.panda_alias_64.csh; cd $CPWD'
alias emy 'set CPWD=`pwd`; cd `echo $CPWD | sed -e "s/\(.*empyrean\)\(.*\)/\1/" `'
alias rrif 'run_reg.sh -IF'
alias rrf 'run_reg.sh -fpd'
alias rr 'run_reg.sh'
alias ml 'make links'
alias mc 'make configure'
alias mk 'make -j4'
alias md 'make debug -j4'
alias de 'make links;make configure; make debug -j4'
alias de1 'make links;make configure; make debug'
alias re 'make links;make configure; make -j4'
alias re1 'make links;make configure; make'
#find * -type f | xargs grep selMode
alias desi 'designer -style cleanlooks -resourcedir .'
alias z6tag 'ctags --langmap=c++:+.inl -h +inl --extra=+qf --c++-kinds=+px --fields=+aitSsKmz -R --exclude="linux26-x86_64" --exclude="tex" --exclude="*.py" --exclude="regression"'
alias tag 'set CPWD=`pwd`; cd `echo $CPWD | sed -e "s/\(.*z6\)\(.*\)/\1/" `; z6tag; cd $CPWD'
alias pch 'set CPWD=`pwd`; cd `echo $CPWD | sed -e "s/\(.*z6\)\(.*\)/\1/" `; make clean -f Makefile.pch; make pch -f Makefile.pch; cd $CPWD'
alias rmake 'set CPWD=`pwd`; cd `echo $CPWD | sed -e "s/\(.*z6\)\(.*\)/\1/" `; cd sle/linux26-x86_64/src/cmd; rear.sh; cd ../../../; make debug; cd $CPWD'
alias btg 'g++ -isystem/pldata/lijing/local/include '
alias db 'cd /home/lijing/test'
alias grep "grep --color -ri"
alias ad "attachSLE.sh"
alias rec "echo $PWD >>~/recentdir"
alias b1 "cd /home/lijing/work/Branch1/empyrean/aether/panda/z6;wk"
alias b2 "cd /home/lijing/work/Branch2/empyrean/aether/panda/z6;wk"
alias b3 "cd /home/lijing/work/Branch3/empyrean/aether/panda/z6;wk"
alias a "aether"
alias af "aether -fpd"
alias f "find . -name "
alias ssh "ssh.sh "

#for svn
setenv SVN_EDITOR vim
alias svn "/work/aether/script/svn"
#alias svn "/pldata3/lijing/local/bin/svn"
alias sreg "svn co http://10.2.2.23/plat/qa/tools tools"
alias semy "svn co http://10.2.2.23/empy/branches/empyrean_20141120 empyrean"
alias sdm "svn co http://10.2.2.23/plat/dman/trunk/dman dman"
alias sz6 "svn co http://10.2.2.23/plat/panda/z6/branches/B111029/B111029 z6"
alias soa "svn co http://10.2.2.23/oa/oa-dm4/22.41p013/trunk oa-all-22.41p013.mod"
alias svs "svn status -u | grep -v linux26-i686 | grep -v linux26-x86_64 | grep -v \\.swp | grep -v \\.d | grep -v \\.gch | grep -v tags | grep -v cases"
alias svc "svn commit"
alias svu "svn update"
alias sva "svn add"

#for dman
alias dvs "dsvn st -u"

#for tkdiff
alias tkdiff "/home/lijing/local/bin/tkdiff"
alias diffcp "tkdiff -rCOMMITTED -rPREV"
alias diffp "tkdiff -rPREV"
alias diffh "tkdiff -rHEAD"

alias sql "sqlite3 -header -column"

#for dump
alias dump "ls -t ~/.empyrean/logs/aether*.dump | head -n1 | xargs cat | c++filt | less"

#for test
alias sz4   'source /work/test-stable/redhate4-linux26-i686/zeni46/setup.csh'
alias my    'source /home/lijing/work/Bug/empyrean/group/mysetup.csh'
alias ic6	'source /work/cadence/ic615/setup.csh'
alias lak	'source /work/laker/32v3p3/setup.csh'

alias z2	'source /icwork/z2/redhat9/pdt_setup.csh'

alias gv 'gvim -p --remote-tab-silent'

#for java
alias jc 'javac `\ls *.java`'
alias ja 'java `\ls *.class | cut -d'.' -f1` | grep `\ls *.java |cut -d. -f1`'

alias X='startx -- -bpp 32 -quiet&' 
alias X1='startx -- :1 -bpp 32 -quiet&' 
alias X2='startx -- :2 -bpp 32 -quiet&'
alias X3='startx -- :3 -bpp 32 -quiet&'
alias X4='startx -- :4 -bpp 32 -quiet&'
alias X5='startx -- :5 -bpp 32 -quiet&'  

alias clean 'rm -rf *.evlayer ngr layout schematic lef* cif* *.ext *.nav .ldc.lock DRC.INT _Crtlib *.lvl *.head *.out *.sum *.log _flatrc _lvsrc _mytech jx* *.DAT *.TXT RC* RE* SPI* *.replay*  cif* lef* _* .gdsincell.log plvs.* *.net* Verification_format *.log *.bak pgnode.file *.rpt *.snet *.ps *.OUT *.density *.clb'

alias vls 'rm -rf layout/ schematic/ *.inp *.log ngr/ _offgrid output.sum pdisp.log pgnode.file slognet.log *.aux *.rpt *.veri.log dummydev.log dataset.log layout.txt *.erc *.net *.snet *.nav *.net.e'

alias cldown 'rm .*.rm* .*.mpg* .*.wmv* .*.avi* .*.exe* .*.rar* .*.htm* .*.zip* .*.rpm* .*.iso*'

alias delCVS 'find -name "CVS" -exec rm -rf {} \;'
#source ~/.panda_alias_64.csh
