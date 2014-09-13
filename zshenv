# .zshenv is sourced on ALL invocations of the shell, unless the -f option is
# set.  It should NOT normally contain commands to set the command search path,
# or other common environment variables unless you really know what you're
# doing.  E.g. running "PATH=/custom/path gdb program" sources this file (when
# gdb runs the program via $SHELL), so you want to be sure not to override a
# custom environment in such cases.  Note also that .zshenv should not contain
# commands that produce output or assume the shell is attached to a tty.

# Set path as only allowing unique values
typeset -U path

# Set the path
path=(~/Documents/projects/phpcs/scripts /usr/local/git/bin /opt/subversion/bin /usr/local/share/npm/bin ~/.cabal/bin ~/.composer/vendor/bin ~/.rvm/gems/ruby-2.1.1/bin /~/.rvm/gems/ruby-2.1.1@global/bin ~/.rvm/rubies/ruby-2.1.1/bin ~/.rvm/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin $path)

export NODE_PATH="/usr/local/lib/node"
export EDITOR=“subl”
export WP_TESTS_DIR=~/vagrant/www/wordpress-develop/tests/phpunit
