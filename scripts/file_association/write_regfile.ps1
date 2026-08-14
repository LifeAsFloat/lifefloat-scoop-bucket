function create_regfile {
    param (
        [string]$cc_root
    )
    if (!(Test-Path "\$cc_root\\install_file_association.reg")) {
        New-Item "\$cc_root\\install_file_association.reg" -ItemType File -Force | Out-Null
        $install_regfile = "\$cc_root\\install_file_association.reg"
        Add-Content $install_regfile "Windows Registry Editor Version 5.00`r`n"
    }
    if (!(Test-Path "\$cc_root\\uninstall_file_association.reg")) {
        New-Item "\$cc_root\\uninstall_file_association.reg" -ItemType File -Force | Out-Null
        $uninstall_regfile = "\$cc_root\\uninstall_file_association.reg"
        Add-Content $uninstall_regfile "Windows Registry Editor Version 5.00`r`n"
    }
}

$files = Get-ChildItem -Path "$scriptpath\..\file_association" -Filter "*.reg"

function write_single_file_association_reg {
    param (
        [string]$APPTYPE,
        [string]$Typename,
        [string]$cc_root,
        [string]$exe_path,
        [string]$icon_root
    )
    foreach ($file in $files) {
        $content = Get-Content $file.FullName
        $content = $content.replace('$APPTYPE', $APPTYPE)
        $content = $content.replace('$Typename', $Typename)
        $content = $content.replace('$cc_root', $cc_root)
        $content = $content.replace('$exe_path', $exe_path)
        $content = $content.replace('$icon_root', $icon_root)
        if ($file.Name -like "*install*") {
            $install_regfile = "\$cc_root\\install_file_association.reg"
            Add-Content $install_regfile $content -Encoding Ascii
        } elseif ($file.Name -like "*uninstall*") {
            $uninstall_regfile = "\$cc_root\\uninstall_file_association.reg"
            Add-Content $uninstall_regfile $content -Encoding Ascii
        }
    }
}

function write_file_association_reg {
    param (
        [string]$cc_root,
        [string]$exe_path,
        [string]$icon_root,
        [array]$file_associations
    )
    create_regfile -cc_root $cc_root
    foreach ($association in $file_associations) {
        $APPTYPE = $association.APPTYPE
        $Typename = $association.Typename
        write_single_file_association_reg -APPTYPE $APPTYPE -Typename $Typename -cc_root $cc_root -exe_path $exe_path -icon_root $icon_root
    }
}

