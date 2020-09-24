# Configs
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install PowerShell Modules
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

# Configure Windows Features
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform               # Enable Windows VM Platform          
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux    # Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All               # Enable Hyper-V
Disable-WindowsOptionalFeature -FeatureName Internet-Explorer-Optional-amd64 –Online    # Disable IE11

Restart-Computer