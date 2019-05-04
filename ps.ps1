# 在Windows10系统下运行power shell脚本，需要参考这个文章的运行power shell脚本的部分
# https://www.windowscentral.com/how-create-and-run-your-first-powershell-script-file-windows-10
# copy directory 看 example 2
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-6#examples
# rename 看 example 4
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-item?view=powershell-6#examples
# https://www.adamtheautomator.com/copy-item-copying-files-powershell/
# 另外注意，这个是power shell脚本.ps1文件，不是batch的脚本.bat文件
cd C:\Users\yyk\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\assets

# (Get-ChildItem -Path . -Recurse).Count
# Get-ChildItem -Path . -Recurse | Copy-Item -Destination d:\wallpaper
Copy-Item . -Destination d:\wallpaper -Recurse

cd d:\wallpaper\assets
# Get-ChildItem -Path . -Recurse | Rename-Item -NewName { $_.name -Replace '\.jpg$','' }
Get-ChildItem -Path . -Recurse | Rename-Item -NewName { $_.name -Replace '$','.jpg' }
