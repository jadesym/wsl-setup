$SCRIPTS_DIRECTORY = "C:\scripts"

# Create a new directory
NewItem -ItemType Directory -Path $SCRIPTS_DIRECTORY -Force
# Copy script to the new directory.
Copy-Item -Path .\ssh-server\ssh-setup.ps1 -Destination $SCRIPTS_DIRECTORY