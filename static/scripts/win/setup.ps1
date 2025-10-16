#Requires -RunAsAdministrator
# Windows Setup Manager
# Generated: 2025-10-16 08:07:03
# Total packages: 10

$ErrorActionPreference = "Stop"

Write-Host "Windows Setup Manager" -ForegroundColor Cyan
Write-Host "====================" -ForegroundColor Cyan
Write-Host ""

# Check if winget is available
if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Error: winget not found!" -ForegroundColor Red
    Write-Host "Please install App Installer from Microsoft Store" -ForegroundColor Yellow
    exit 1
}

# Package list
$packages = @(
    "Google.Chrome",
    "Brave.Brave",
    "Mozilla.Firefox",
    "Microsoft.Edge",
    "9NKSQGP7F2NH",
    "Discord.Discord",
    "Proton.ProtonMail",
    "Proton.ProtonPass",
    "Proton.ProtonVPN",
    "Cloudflare.Warp"
)

Write-Host "Found $($packages.Count) packages to install" -ForegroundColor Green
Write-Host ""

$installed = 0
$failed = @()

foreach ($pkg in $packages) {
    Write-Host "Installing $pkg..." -NoNewline
    
    try {
        winget install --id $pkg --silent --accept-source-agreements --accept-package-agreements --disable-interactivity | Out-Null
        Write-Host " Done" -ForegroundColor Green
        $installed++
    }
    catch {
        Write-Host " Failed" -ForegroundColor Red
        $failed += $pkg
    }
}

Write-Host ""
Write-Host "Installation Complete!" -ForegroundColor Cyan
Write-Host "Installed: $installed/$($packages.Count)" -ForegroundColor Green

if ($failed.Count -gt 0) {
    Write-Host "Failed: $($failed.Count)" -ForegroundColor Red
    $failed | ForEach-Object { Write-Host "  - $_" -ForegroundColor Yellow }
}