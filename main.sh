#script sets up the initial environments and ansible. 
#once ansible exists ansible will setup the rest
#usage: 
# 1. change permissions: chmod +x main.sh 
# 2. run script: sudo main.sh 
# note: if run more than once, it will update current versions


#installs brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#installs python
brew install python

#installs ansible
python3 -m pip install --user ansible

