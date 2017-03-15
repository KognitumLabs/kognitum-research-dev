#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING RUBY'
echo '----------------------------------------------'

source /usr/local/rvm/scripts/rvm

rvm use --install $1

shift

if (( $# ))
then gem install $@
fi

echo rvm use ruby-2.3.1 >> /etc/profile.d/rvm_custom.sh
