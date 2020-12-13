Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-GlobalMailSearch -ImpersonationAccount \'chlng-pdc-01.CHLNG.com\\Administrator\' -ExchHostname \'chlng-wks-1\' -OutputCsv \'C:\\ProgramData\\global-email-search.csv\';
Import-Module C:\\ProgramData\\MailSniper.ps1; Invoke-SelfSearch -Mailbox HealthMailbox44abe0d@CHLNG.com -OtherUserMailbox; 
Import-Module C:\\ProgramData\\pview.ps1; Get-NetUser | Sort-Object mail | ForEach-Object {$_.mail} | Out-File -Encoding ascii C:\\ProgramData\\emaillist.txt;

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2016; . $env:ExchangeInstallPath\\bin\\RemoteExchange.ps1; Connect-ExchangeServer -auto; Get-Help Get-Mailbox;

powershell Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; New-MailboxExportRequest -Mailbox \'chong@chlng.com\' -FilePath \'\\\\chlng-wks-1\\C$\\ProgramData\\chong.pst\';