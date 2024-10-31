# Check if Chocolatey is already installed
if (!(Get-Package -AllUsers)) {
    Write-Host "Chocolatey is not installed. Installing now..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing -Force
} else {
    Write-Host "Chocolatey is already installed."
}

# Install GitVersion using Chocolatey
Write-Host "Installing GitVersion..."
choco install gitversion --yes
if ($LASTEXITCODE -ne 0) {
    Write-Host "Failed to install GitVersion. Please check the installation log."
} else {
    Write-Host "GitVersion installed successfully."
}
