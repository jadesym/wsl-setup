#!/bin/bash

PORT_NUMBER=2222

while true; do
  read -p "Run the './ssh-server/ssh-setup.ps1' script and type done when finished: " input
  if [ "$input" == "done" ]; then
    break
  fi
  echo "You entered [$input] which is not done!"
done

sudo apt-get install openssh-server
# Set up SSH server to set the port number
sudo sed -i "s/#Port 22/Port $PORT_NUMBER/g" /etc/ssh/sshd_config
sudo sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/g' /etc/ssh/sshd_config
# Start the server
sudo service ssh start
# Confirm that SSH server is running
sudo service ssh status

# Allow WSL user to start SSH server without typing password
sudo sh -c "echo '${USER} ALL=(root) NOPASSWD: /usr/sbin/service ssh start' > /etc/sudoers.d/service-ssh-start"

# Output the IP Address for SSHing
IP_ADDRESS=$(ip addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | tail -n 1)
echo $IP_ADDRESS | clip.exe
echo 'IP Address (has been copied to clipboard):' $IP_ADDRESS
