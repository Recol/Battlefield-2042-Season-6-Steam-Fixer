
$programName = "EA app"
Write-Host "Searching for $programName..."
$program = Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE (Name LIKE '%$programName%')"

# Check if the program is installed
if ($program -eq $null) {
    Write-Host "Program not found."
} else {
    # Output message indicating the uninstallation process
    Write-Host "Uninstalling $programName..."
    
    # Uninstall the program
    $program.Uninstall()
    
    # Output message indicating successful uninstallation
    Write-Host "$programName uninstalled successfully."
    
    # Output message to boot Battlefield 2042
    Write-Host "Please boot Battlefield 2042."
}
