# Backup wsl disto Ubuntu
#
# https://medium.com/codex/setting-up-regular-automatic-backup-of-your-windows-subsystem-for-linux-wsl2-data-using-task-b36d2b2519dd
#
# Define the backup directory
$backupDir = "D:/wsl/distros"

# Check if the backup directory exists, if not, create it
if (-not (Test-Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir
}

# Define the backup file name
$backupFile = Join-Path $backupDir "ubuntu_backup.tar"

# Export the Ubuntu distro to the backup file
wsl --export Ubuntu $backupFile

# Output a message to indicate the backup was successful
Write-Output "Backup of Ubuntu to $backupFile was successful."
