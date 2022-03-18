

if [ $0 = $BASH_SOURCE ]; then
	echo "Can not run this script, try to source it"
	exit 1
fi

if [ ! -z $BACKUP_PATH ]; then
	echo "Already sourced, run deactivate to allow source again."
	return 1	
fi


HERE=`dirname "$(readlink -f "$BASH_SOURCE")"`
export BACKUP_PATH=$PATH
export BACKUP_PS1=$PS1
export BACKUP_ENV_TITLE=$ENV_TITLE
export ENVDIR=$HOME/esp32/esp-idf
export ENV_TITLE="esp32-idf"
export PS1="($ENV_TITLE) $PS1"

source $HOME/esp32/esp-idf/export.sh

function deactivate {
  export PATH=$BACKUP_PATH
  export PS1=$BACKUP_PS1
  export ENV_TITLE=$BACKUP_ENV_TITLE
  unset BACKUP_PATH
  unset BACKUP_PS1
  unset ENV_TITLE 
  unset ENVDIR 
  unset BACKUP_ENV_TITLE
  unset -f deactivate
}

