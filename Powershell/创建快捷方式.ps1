$shell = New-Object -ComObject WScript.Shell;
$desktop = [System.Environment]::GetFolderPath('Desktop');
$shortcut = $shell.CreateShortcut("$desktop\clickme.lnk");
$shortcut.TargetPath="calc.exe";
$shortcut.IconLocation="D:\ProgramData\IconLibrary\MyIconLibrary64.dll,5";
$shortcut.Save();
[Console]::ReadKey() | Out-Null;
