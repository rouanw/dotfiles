UNAME=`uname -a`
echo $UNAME
echo $UNAME | grep "Darwin"
if [[ $? -eq 0 ]] 
  then
    export DARWIN="true"
fi

echo "Loading .bash_profile... "
source ~/.bashrc
echo "Loading .bashrc... "

source ~/.bash_vcs.sh
echo "Loading .bash_vcs.sh... "
source ~/.bash_login
echo "Loading .bash_login.sh.. "

source /etc/cdargs-bash.sh
source ~/.cdargs.sh
echo "Loading .cdargs... "

# MacPorts Installer addition on 2009-12-21_at_09:37:47: adding an appropriate PATH variable for use with MacPorts.
# if [[ id /opt/local/bin ]]; then
#     export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# fi
# Finished adapting your PATH environment variable for use with MacPorts.
if [ $DARWIN == "true" ]
then
  source ~/.darwin/environment
else
  source ~/.linux/environment
fi

echo "Loading .environment... "
source ~/.emacs_server
echo "Loading .emacs_server... "

# MacPorts Installer addition on 2010-08-23_at_10:54:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
