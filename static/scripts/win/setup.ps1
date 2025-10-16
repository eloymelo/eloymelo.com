#Requires -RunAsAdministrator
# Windows Setup Manager
# Generated: 2025-10-16 08:17:04
# Total packages: 95

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

# Build package list with categories
$packageList = @(
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Google Chrome"
        ID = "Google.Chrome"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Brave"
        ID = "Brave.Brave"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Mozilla Firefox"
        ID = "Mozilla.Firefox"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Microsoft Edge"
        ID = "Microsoft.Edge"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "WhatsApp"
        ID = "9NKSQGP7F2NH"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "Discord"
        ID = "Discord.Discord"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "Proton Mail"
        ID = "Proton.ProtonMail"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Proton Pass"
        ID = "Proton.ProtonPass"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Proton VPN"
        ID = "Proton.ProtonVPN"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Cloudflare Warp"
        ID = "Cloudflare.Warp"
    },
    [PSCustomObject]@{
        Category = "Cloud Storage"
        Name = "Proton Drive"
        ID = "Proton.ProtonDrive"
    },
    [PSCustomObject]@{
        Category = "Cloud Storage"
        Name = "Ente Photos"
        ID = "ente-io.photos-desktop"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Steam"
        ID = "Valve.Steam"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "EA Desktop"
        ID = "ElectronicArts.EADesktop"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Ubisoft Connect"
        ID = "Ubisoft.Connect"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Paradox Launcher"
        ID = "ParadoxInteractive.ParadoxLauncher"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Vortex"
        ID = "NexusMods.Vortex"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Battle.net"
        ID = "Blizzard.BattleNet"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Parsec"
        ID = "Parsec.Parsec"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Visual Studio Code"
        ID = "Microsoft.VisualStudioCode"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Debian (WSL)"
        ID = "9MSVKQC78PK6"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Python Launcher"
        ID = "Python.Launcher"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Python 3.9"
        ID = "Python.Python.3.9"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Java Runtime Environment"
        ID = "Oracle.JavaRuntimeEnvironment"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Node.js"
        ID = "OpenJS.NodeJS"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Windows Terminal"
        ID = "Microsoft.WindowsTerminal"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Git"
        ID = "Git.Git"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "PowerShell"
        ID = "Microsoft.PowerShell"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Oh My Posh"
        ID = "JanDeDobbeleer.OhMyPosh"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Claude"
        ID = "Anthropic.Claude"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Ollama"
        ID = "Ollama.Ollama"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "LibreOffice"
        ID = "TheDocumentFoundation.LibreOffice"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "PDFgear"
        ID = "PDFgear.PDFgear"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "Notepad++"
        ID = "Notepad++.Notepad++"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "Obsidian"
        ID = "Obsidian.Obsidian"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "VLC Media Player"
        ID = "VideoLAN.VLC"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "OBS Studio"
        ID = "OBSProject.OBSStudio"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Spotify"
        ID = "Spotify.Spotify"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Amazon Music"
        ID = "9NMS233VM4Z9"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Audacity"
        ID = "Audacity.Audacity"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "HandBrake"
        ID = "HandBrake.HandBrake"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "GIMP"
        ID = "GIMP.GIMP.3"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "Blender"
        ID = "BlenderFoundation.Blender"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "Upscayl"
        ID = "Upscayl.Upscayl"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "7-Zip"
        ID = "7zip.7zip"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "NanaZip"
        ID = "M2Team.NanaZip"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "WinRAR"
        ID = "RARLab.WinRAR"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "qBittorrent"
        ID = "qBittorrent.qBittorrent"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "Free Download Manager"
        ID = "SoftDeluxe.FreeDownloadManager"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "File Converter"
        ID = "AdrienAllard.FileConverter"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "Core Temp"
        ID = "ALCPU.CoreTemp"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "HWMonitor"
        ID = "CPUID.HWMonitor"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "CPU-Z"
        ID = "CPUID.CPU-Z"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "GPU-Z"
        ID = "TechPowerUp.GPU-Z"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "CrystalDiskInfo"
        ID = "CrystalDewWorld.CrystalDiskInfo"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "Wintoys"
        ID = "9P8LTPGCBZXD"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "UniGetUI"
        ID = "MartiCliment.UniGetUI"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "Chocolatey"
        ID = "Chocolatey.Chocolatey"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "DiskGenius"
        ID = "Eassos.DiskGenius"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "MiniTool Partition Wizard"
        ID = "MiniTool.PartitionWizard.Free"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "IObit Unlocker"
        ID = "IObit.IObitUnlocker"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "TranslucentTB"
        ID = "9PF4KZ2VN4W9"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "Nilesoft Shell"
        ID = "Nilesoft.Shell"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "StartAllBack"
        ID = "StartIsBack.StartAllBack"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "FxSound"
        ID = "FxSound.FxSound"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Corsair iCUE"
        ID = "Corsair.iCUE.5"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logitech Options+"
        ID = "Logitech.OptionsPlus"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logitech G HUB"
        ID = "Logitech.GHUB"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logi Tune"
        ID = "Logitech.LogiTune"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Wacom Tablet Driver"
        ID = "Wacom.WacomTabletDriver"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "NVIDIA PhysX"
        ID = "Nvidia.PhysX"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Screenbox"
        ID = "Starpine.Screenbox"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Blip Transfer"
        ID = "9N7JSXC1SJK6"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Windows Clock"
        ID = "9WZDNCRFJ3PR"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Windows Voice Recorder"
        ID = "9WZDNCRFJBBG"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Parabolic"
        ID = "Nickvision.Parabolic"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "LocalSend"
        ID = "LocalSend.LocalSend"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Radmin VPN"
        ID = "Famatech.RadminVPN"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "App Installer"
        ID = "Microsoft.AppInstaller"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = ".NET Desktop Runtime 6"
        ID = "Microsoft.DotNet.DesktopRuntime.6"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = ".NET Desktop Runtime 8"
        ID = "Microsoft.DotNet.DesktopRuntime.8"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "Server Speech Platform Runtime"
        ID = "Microsoft.ServerSpeechPlatformRuntime"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC Libs Desktop 14"
        ID = "Microsoft.VCLibs.Desktop.14"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2005 Redistributable x86"
        ID = "Microsoft.VCRedist.2005.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2008 Redistributable x64"
        ID = "Microsoft.VCRedist.2008.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2008 Redistributable x86"
        ID = "Microsoft.VCRedist.2008.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2010 Redistributable x64"
        ID = "Microsoft.VCRedist.2010.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2010 Redistributable x86"
        ID = "Microsoft.VCRedist.2010.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2012 Redistributable x64"
        ID = "Microsoft.VCRedist.2012.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2012 Redistributable x86"
        ID = "Microsoft.VCRedist.2012.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2013 Redistributable x64"
        ID = "Microsoft.VCRedist.2013.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2013 Redistributable x86"
        ID = "Microsoft.VCRedist.2013.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2015-2022 Redistributable x64"
        ID = "Microsoft.VCRedist.2015+.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2015-2022 Redistributable x86"
        ID = "Microsoft.VCRedist.2015+.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "Visual Studio Tools for Office Runtime"
        ID = "Microsoft.VSTOR"
    }
)

Write-Host "Total available packages: $($packageList.Count)" -ForegroundColor Green
Write-Host "Select packages to install from the window that opens..." -ForegroundColor Yellow
Write-Host ""

# Show selection window
$selected = $packageList | Out-GridView -Title "Select packages to install" -OutputMode Multiple

if ($selected.Count -eq 0) {
    Write-Host "No packages selected. Exiting." -ForegroundColor Yellow
    exit 0
}

Write-Host "Installing $($selected.Count) packages..." -ForegroundColor Green
Write-Host ""

$installed = 0
$failed = @()

foreach ($pkg in $selected) {
    Write-Host "[$($installed + 1)/$($selected.Count)] Installing $($pkg.Name)..." -NoNewline
    
    try {
        winget install --id $pkg.ID --silent --accept-source-agreements --accept-package-agreements --disable-interactivity 2>&1 | Out-Null
        Write-Host " Done" -ForegroundColor Green
        $installed++
    }
    catch {
        Write-Host " Failed" -ForegroundColor Red
        $failed += $pkg.Name
    }
}

Write-Host ""
Write-Host "Installation Complete!" -ForegroundColor Cyan
Write-Host "Installed: $installed/$($selected.Count)" -ForegroundColor Green

if ($failed.Count -gt 0) {
    Write-Host "Failed: $($failed.Count)" -ForegroundColor Red
    $failed | ForEach-Object { Write-Host "  - $_" -ForegroundColor Yellow }
}