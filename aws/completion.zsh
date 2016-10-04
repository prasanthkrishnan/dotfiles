# Replace the path as needed
# must be loaded after compinit
AWS_COMPLETER_PATH=`brew --prefix`/aws/bin/aws_zsh_completer.sh
if [[ -a $AWS_COMPLETER_PATH ]]
then
  source $AWS_COMPLETER_PATH
fi
unset AWS_COMPLETER_PATH
