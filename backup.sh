# Backup the installed brew packages
brew bundle dump --force

# Copy the host file to the home directory
cp /etc/hosts ~/
