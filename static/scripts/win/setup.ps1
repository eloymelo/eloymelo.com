#Requires -RunAsAdministrator
# Windows Setup Manager
# Generated: 2025-10-16 08:23:53
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
        Description = "Fast and secure web browser by Google"
        ID = "Google.Chrome"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Brave"
        Description = "Privacy-focused browser with built-in ad blocking"
        ID = "Brave.Brave"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Mozilla Firefox"
        Description = "Open-source web browser focused on privacy"
        ID = "Mozilla.Firefox"
    },
    [PSCustomObject]@{
        Category = "Browsers"
        Name = "Microsoft Edge"
        Description = "Modern web browser built on Chromium"
        ID = "Microsoft.Edge"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "WhatsApp"
        Description = "Messaging and voice/video call application"
        ID = "9NKSQGP7F2NH"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "Discord"
        Description = "Voice, video, and text chat for communities and gamers"
        ID = "Discord.Discord"
    },
    [PSCustomObject]@{
        Category = "Communication"
        Name = "Proton Mail"
        Description = "Encrypted email service with privacy focus"
        ID = "Proton.ProtonMail"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Proton Pass"
        Description = "End-to-end encrypted password manager"
        ID = "Proton.ProtonPass"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Proton VPN"
        Description = "Secure VPN service with no-logs policy"
        ID = "Proton.ProtonVPN"
    },
    [PSCustomObject]@{
        Category = "Security & Privacy"
        Name = "Cloudflare Warp"
        Description = "Free VPN and DNS service by Cloudflare"
        ID = "Cloudflare.Warp"
    },
    [PSCustomObject]@{
        Category = "Cloud Storage"
        Name = "Proton Drive"
        Description = "Encrypted cloud storage service"
        ID = "Proton.ProtonDrive"
    },
    [PSCustomObject]@{
        Category = "Cloud Storage"
        Name = "Ente Photos"
        Description = "End-to-end encrypted photo backup and storage"
        ID = "ente-io.photos-desktop"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Steam"
        Description = "Digital distribution platform for PC games"
        ID = "Valve.Steam"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "EA Desktop"
        Description = "Electronic Arts game launcher and store"
        ID = "ElectronicArts.EADesktop"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Ubisoft Connect"
        Description = "Ubisoft's game launcher and rewards platform"
        ID = "Ubisoft.Connect"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Paradox Launcher"
        Description = "Game launcher for Paradox Interactive titles"
        ID = "ParadoxInteractive.ParadoxLauncher"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Vortex"
        Description = "Mod manager for games from Nexus Mods"
        ID = "NexusMods.Vortex"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Battle.net"
        Description = "Blizzard's game launcher for WoW, Overwatch, and more"
        ID = "Blizzard.BattleNet"
    },
    [PSCustomObject]@{
        Category = "Gaming"
        Name = "Parsec"
        Description = "Low-latency game streaming and remote desktop"
        ID = "Parsec.Parsec"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Visual Studio Code"
        Description = "Powerful code editor with extensions support"
        ID = "Microsoft.VisualStudioCode"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Debian (WSL)"
        Description = "Debian Linux distribution for Windows Subsystem for Linux"
        ID = "9MSVKQC78PK6"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Python Launcher"
        Description = "Launcher for Python versions on Windows"
        ID = "Python.Launcher"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Python 3.9"
        Description = "Python programming language version 3.9"
        ID = "Python.Python.3.9"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Java Runtime Environment"
        Description = "Java runtime required for Java applications"
        ID = "Oracle.JavaRuntimeEnvironment"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Node.js"
        Description = "JavaScript runtime built on Chrome's V8 engine"
        ID = "OpenJS.NodeJS"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Windows Terminal"
        Description = "Modern terminal application for Windows"
        ID = "Microsoft.WindowsTerminal"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Git"
        Description = "Distributed version control system"
        ID = "Git.Git"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "PowerShell"
        Description = "Cross-platform task automation and configuration tool"
        ID = "Microsoft.PowerShell"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Oh My Posh"
        Description = "Prompt theme engine for any shell"
        ID = "JanDeDobbeleer.OhMyPosh"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Claude"
        Description = "AI assistant by Anthropic for desktop"
        ID = "Anthropic.Claude"
    },
    [PSCustomObject]@{
        Category = "Development"
        Name = "Ollama"
        Description = "Run large language models locally"
        ID = "Ollama.Ollama"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "LibreOffice"
        Description = "Free and open-source office suite"
        ID = "TheDocumentFoundation.LibreOffice"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "PDFgear"
        Description = "Free PDF reader and editor"
        ID = "PDFgear.PDFgear"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "Notepad++"
        Description = "Advanced text and source code editor"
        ID = "Notepad++.Notepad++"
    },
    [PSCustomObject]@{
        Category = "Productivity"
        Name = "Obsidian"
        Description = "Powerful knowledge base and note-taking app"
        ID = "Obsidian.Obsidian"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "VLC Media Player"
        Description = "Free and open-source multimedia player"
        ID = "VideoLAN.VLC"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "OBS Studio"
        Description = "Free software for video recording and live streaming"
        ID = "OBSProject.OBSStudio"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Spotify"
        Description = "Digital music streaming service"
        ID = "Spotify.Spotify"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Amazon Music"
        Description = "Music streaming service by Amazon"
        ID = "9NMS233VM4Z9"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "Audacity"
        Description = "Free and open-source audio editor"
        ID = "Audacity.Audacity"
    },
    [PSCustomObject]@{
        Category = "Media & Entertainment"
        Name = "HandBrake"
        Description = "Open-source video transcoder"
        ID = "HandBrake.HandBrake"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "GIMP"
        Description = "Free and open-source image editor"
        ID = "GIMP.GIMP.3"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "Blender"
        Description = "Free 3D creation suite for modeling, animation, and rendering"
        ID = "BlenderFoundation.Blender"
    },
    [PSCustomObject]@{
        Category = "Creative Tools"
        Name = "Upscayl"
        Description = "AI-powered image upscaling tool"
        ID = "Upscayl.Upscayl"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "7-Zip"
        Description = "Free and open-source file archiver"
        ID = "7zip.7zip"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "NanaZip"
        Description = "Modern file archiver based on 7-Zip"
        ID = "M2Team.NanaZip"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "WinRAR"
        Description = "Archive manager for RAR and ZIP files"
        ID = "RARLab.WinRAR"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "qBittorrent"
        Description = "Free and open-source BitTorrent client"
        ID = "qBittorrent.qBittorrent"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "Free Download Manager"
        Description = "Download accelerator and manager"
        ID = "SoftDeluxe.FreeDownloadManager"
    },
    [PSCustomObject]@{
        Category = "File Management"
        Name = "File Converter"
        Description = "Convert and compress files in Windows Explorer"
        ID = "AdrienAllard.FileConverter"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "Core Temp"
        Description = "CPU temperature monitoring tool"
        ID = "ALCPU.CoreTemp"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "HWMonitor"
        Description = "Hardware monitoring tool for voltages, temperatures, and fans"
        ID = "CPUID.HWMonitor"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "CPU-Z"
        Description = "System information tool for CPU, motherboard, and memory"
        ID = "CPUID.CPU-Z"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "GPU-Z"
        Description = "Graphics card information and monitoring utility"
        ID = "TechPowerUp.GPU-Z"
    },
    [PSCustomObject]@{
        Category = "System Monitoring"
        Name = "CrystalDiskInfo"
        Description = "Hard disk health monitoring tool"
        ID = "CrystalDewWorld.CrystalDiskInfo"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "Wintoys"
        Description = "Modern Windows utilities and tweaks tool"
        ID = "9P8LTPGCBZXD"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "UniGetUI"
        Description = "Unified interface for multiple package managers"
        ID = "MartiCliment.UniGetUI"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "Chocolatey"
        Description = "Package manager for Windows"
        ID = "Chocolatey.Chocolatey"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "DiskGenius"
        Description = "Partition manager and data recovery tool"
        ID = "Eassos.DiskGenius"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "MiniTool Partition Wizard"
        Description = "Free partition manager and disk management tool"
        ID = "MiniTool.PartitionWizard.Free"
    },
    [PSCustomObject]@{
        Category = "System Tools"
        Name = "IObit Unlocker"
        Description = "Unlock and delete stubborn files and folders"
        ID = "IObit.IObitUnlocker"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "TranslucentTB"
        Description = "Make Windows taskbar transparent or translucent"
        ID = "9PF4KZ2VN4W9"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "Nilesoft Shell"
        Description = "Powerful context menu manager for Windows"
        ID = "Nilesoft.Shell"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "StartAllBack"
        Description = "Restore classic Windows UI elements"
        ID = "StartIsBack.StartAllBack"
    },
    [PSCustomObject]@{
        Category = "Customization"
        Name = "FxSound"
        Description = "Audio enhancement and equalizer for Windows"
        ID = "FxSound.FxSound"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Corsair iCUE"
        Description = "Control software for Corsair peripherals and components"
        ID = "Corsair.iCUE.5"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logitech Options+"
        Description = "Customize Logitech mice, keyboards, and touchpads"
        ID = "Logitech.OptionsPlus"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logitech G HUB"
        Description = "Gaming software for Logitech gaming devices"
        ID = "Logitech.GHUB"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Logi Tune"
        Description = "Customize Logitech webcams and headsets"
        ID = "Logitech.LogiTune"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "Wacom Tablet Driver"
        Description = "Driver software for Wacom drawing tablets"
        ID = "Wacom.WacomTabletDriver"
    },
    [PSCustomObject]@{
        Category = "Hardware & Drivers"
        Name = "NVIDIA PhysX"
        Description = "Physics engine runtime for gaming"
        ID = "Nvidia.PhysX"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Screenbox"
        Description = "Modern media player for Windows"
        ID = "Starpine.Screenbox"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Blip Transfer"
        Description = "Fast file transfer between devices"
        ID = "9N7JSXC1SJK6"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Windows Clock"
        Description = "Clock app with alarm, timer, and stopwatch"
        ID = "9WZDNCRFJ3PR"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Windows Voice Recorder"
        Description = "Simple audio recording app for Windows"
        ID = "9WZDNCRFJBBG"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Parabolic"
        Description = "Download videos and audio from online platforms"
        ID = "Nickvision.Parabolic"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "LocalSend"
        Description = "Share files to nearby devices without internet"
        ID = "LocalSend.LocalSend"
    },
    [PSCustomObject]@{
        Category = "Utilities"
        Name = "Radmin VPN"
        Description = "Free VPN for gaming and remote access"
        ID = "Famatech.RadminVPN"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "App Installer"
        Description = "Install apps from MSIX packages"
        ID = "Microsoft.AppInstaller"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = ".NET Desktop Runtime 6"
        Description = "Runtime for .NET 6 desktop applications"
        ID = "Microsoft.DotNet.DesktopRuntime.6"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = ".NET Desktop Runtime 8"
        Description = "Runtime for .NET 8 desktop applications"
        ID = "Microsoft.DotNet.DesktopRuntime.8"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "Server Speech Platform Runtime"
        Description = "Runtime for speech recognition applications"
        ID = "Microsoft.ServerSpeechPlatformRuntime"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC Libs Desktop 14"
        Description = "Visual C++ library dependencies"
        ID = "Microsoft.VCLibs.Desktop.14"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2005 Redistributable x86"
        Description = "Visual C++ 2005 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2005.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2008 Redistributable x64"
        Description = "Visual C++ 2008 runtime components (64-bit)"
        ID = "Microsoft.VCRedist.2008.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2008 Redistributable x86"
        Description = "Visual C++ 2008 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2008.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2010 Redistributable x64"
        Description = "Visual C++ 2010 runtime components (64-bit)"
        ID = "Microsoft.VCRedist.2010.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2010 Redistributable x86"
        Description = "Visual C++ 2010 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2010.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2012 Redistributable x64"
        Description = "Visual C++ 2012 runtime components (64-bit)"
        ID = "Microsoft.VCRedist.2012.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2012 Redistributable x86"
        Description = "Visual C++ 2012 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2012.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2013 Redistributable x64"
        Description = "Visual C++ 2013 runtime components (64-bit)"
        ID = "Microsoft.VCRedist.2013.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2013 Redistributable x86"
        Description = "Visual C++ 2013 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2013.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2015-2022 Redistributable x64"
        Description = "Visual C++ 2015-2022 runtime components (64-bit)"
        ID = "Microsoft.VCRedist.2015+.x64"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "VC++ 2015-2022 Redistributable x86"
        Description = "Visual C++ 2015-2022 runtime components (32-bit)"
        ID = "Microsoft.VCRedist.2015+.x86"
    },
    [PSCustomObject]@{
        Category = "System Dependencies"
        Name = "Visual Studio Tools for Office Runtime"
        Description = "Runtime for Office add-ins and solutions"
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