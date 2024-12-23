sudo apt update && sudo apt -y upgrade

# Update to the latest version of git
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git

# Set default branch for git to use main
git config --global init.defaultBranch main
# Set default editor for git to use vim
git config --global core.editor "vim"

# Create a workspace directory for development
mkdir workspace
cd workspace

# Install Github CLI for Ubuntu
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt -y install gh

# Install dos2unix command for ease of use
sudo apt -y install dos2unix

# Create a hushlogin file to hush the Ubuntu startup message
touch /home/kfu/.hushlogin

# xdg-open suppport
sudo add-apt-repository ppa:wslutilities/wslu
sudo apt update
sudo apt install wslu
