function Move-Data_dir {
    param (
        [string]$data_dir,
        [string]$persist_dir
    )
    if (!(Test-Path $persist_dir)) {
        New-Item -ItemType Directory -Path $persist_dir | Out-Null
    }
    if (Test-Path $data_dir) {
        $testlink = (Get-Item $data_dir).LinkType
        if ($testlink -ne "Junction") {
            Write-Host "Moving data from $data_dir to $persist_dir"
            Get-ChildItem -Path $data_dir | ForEach-Object {
                $source = $_.FullName
                $destination = Join-Path -Path $persist_dir -ChildPath $_.Name
                Move-Item -Path $source -Destination $destination
            }
        }
        else {
            Write-Host "$data_dir is already a junction. Skipping move."
        }
        Remove-Item -Path $data_dir -Recurse -Force
    }
    Write-Host "Creating junction from $data_dir to $persist_dir"
    New-Item -ItemType Junction -Path $data_dir -Target $persist_dir | Out-Null
}

function Add-Startup_menu {
    param (
        [string]$cc_root,
        [string]$exeName,
        [string]$shortcutName
    )
    New-Item -Path "$cc_root\install_startup.reg" -ItemType File -Force | Out-Null
    New-Item -Path "$cc_root\uninstall_startup.reg" -ItemType File -Force | Out-Null
    Set-Content -Path "$cc_root\install_startup.reg" -Value "Windows Registry Editor Version 5.00`r`n`r`n[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]`r`n`"$shortcutName`"=`"$cc_root\\$exeName`"`r`n" -Encoding ascii
    Set-Content -Path "$cc_root\uninstall_startup.reg" -Value "Windows Registry Editor Version 5.00`r`n`r`n[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]`r`n`"$shortcutName`"=-`r`n" -Encoding ascii
}
