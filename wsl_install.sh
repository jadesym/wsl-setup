sudo apt update && sudo apt upgrade

# Update to the latest version of git
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

# Create a workspace directory for development
mkdir workspace
cd workspace

# Install Github CLI for Ubuntu
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
