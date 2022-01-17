# enable the "Virtual Machine Platform" optional feature.
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Set WSL2 as default version
wsl --set-default-version 2

# Install WSL Ubuntu distribution
wsl --install -d Ubuntu
