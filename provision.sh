sudo apt-get update

# Install python3
#sudo apt-get -y install python3 python3-pip python3-apt
sudo useradd -m -p $(openssl passwd -1 student) ml4t

## ANACONDA INSTALL ##
# Go to home directory
cd ~

# You can change what anaconda version you want at 
# https://repo.continuum.io/archive/
wget -q https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh --show-progress --progress=bar:force:noscroll
bash Anaconda3-2020.11-Linux-x86_64.sh -b -p ~/anaconda
rm Anaconda3-2020.11-Linux-x86_64.sh
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc
#echo 'export PATH="/root/anaconda/bin:$PATH"' >> /etc/bash.bashrc

# Reload default profile
source ~/.bashrc

~/anaconda/bin/conda update conda -y

~/anaconda/bin/conda env create --file env.yml

~/anaconda/bin/conda init bash

# Allow password Authentication
sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
/etc/init.d/ssh restart