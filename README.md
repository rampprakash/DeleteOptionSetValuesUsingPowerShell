Delete Option Set Values Using PowerShell

PowerShell scripts to delete Choice (Option Set) values from Microsoft Dynamics 365 / Dataverse environments.

Features
Delete Global Choice values
Delete Local Choice values
Connect using Microsoft.Xrm.Data.PowerShell
Automate metadata cleanup
Prerequisites
PowerShell 5.1+
Dataverse/Dynamics 365 access
Microsoft.Xrm.Data.PowerShell module

Install module:

Install-Module Microsoft.Xrm.Data.PowerShell -Scope CurrentUser
Usage
Delete Global Choice Value

Update values in the script:

$OptionSetName = "new_globalchoiceset"
$OptionValue = 100000001

Run:

.\DeleteGlobalOptionSetValue.ps1
Delete Local Choice Value

Update values:

$EntityLogicalName = "account"
$AttributeLogicalName = "new_status"
$OptionValue = 100000001

Run:

.\DeleteLocalOptionSetValue.ps1

Notes
Deleting values is irreversible
Ensure values are unused before deletion
Test in non-production environments first
