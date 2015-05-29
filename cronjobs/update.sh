echo "-----------------------------------------------------"
echo "Running Updates"
echo "Date: $(date)"
echo "-----------------------------------------------------"
echo ""
echo "Homebrew:"
/usr/local/bin/brew update
/usr/local/bin/brew upgrade
/usr/local/bin/brew cleanup
/usr/local/bin/brew prune
echo ""
echo "Ruby Gems:"
/usr/bin/gem update
/usr/bin/gem cleanup
echo ""
echo "NPM:"
/usr/local/bin/npm update -g --quiet
/usr/local/bin/npm dedupe -g
echo ""
echo "Composer:"
cd ~/.composer
/usr/local/bin/composer selfupdate
/usr/local/bin/composer update
cd -
echo ""
echo "All updates finished"
echo ""

