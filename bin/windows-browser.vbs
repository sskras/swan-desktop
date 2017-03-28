
Dim oShell
Set oShell = CreateObject("WScript.Shell")

Dim strProgId
strProgId = oShell.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice\ProgID")
Dim strExe
Dim arg
strExe = oShell.RegRead("HKEY_CLASSES_ROOT\" & strProgId & "\shell\open\command\")
wscript.echo strExe
if WScript.Arguments.Count > 0 then
	arg = WScript.Arguments(0)
	if InStr(strExe, "%1") then
		strExe = Replace(strExe, "%1", arg)
	else
		strExe = strExe & " " & arg
	end if
end if
if InStr(strExe, """%1""") then
	strExe = Replace(strExe,"""%1""","")
end if
if InStr(strExe,"%1") then
	strExe = Replace(strExe,"%1","")
end if
wscript.echo strExe
oShell.run strExe
