# This command will return a network connection profile
# associated with one of the existing network adapters
Get-NetConnectionProfile

# Here we will introduce the index of the network card that interests us
# which we will get from the previous command
[int]$command = Read-Host "Please, select the index of the desired network adapter"

# Once this command is set, it will be executed automatically, so
# will change the network from public to private
Set-NetConnectionProfile -InterfaceIndex $command -NetworkCategory Private

