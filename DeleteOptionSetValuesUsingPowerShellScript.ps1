$conn = Get-CrmConnection -InteractiveMode
$conn.BypassPluginExecution = $true

$entityName = "account"

$optionSetMappings = @(
    @{ Field = "new_field1"; Value = 484800000 },
    @{ Field = "new_field2"; Value = 484800000 },
    @{ Field = "new_field3"; Value = 484800000 },
    @{ Field = "new_field4"; Value = 484800000 },
    @{ Field = "new_field5"; Value = 484800000 }
)

foreach ($item in $optionSetMappings) {

    try {

        $request = New-Object Microsoft.Xrm.Sdk.Messages.DeleteOptionValueRequest
        $request.EntityLogicalName = $entityName
        $request.AttributeLogicalName = $item.Field
        $request.Value = $item.Value

        $conn.Execute($request)

        Write-Host "Deleted option value $($item.Value) from field $($item.Field)"
    }
    catch {
        Write-Host "Failed for field $($item.Field)"
        Write-Host $_.Exception.Message
    }
}

$publishRequest = New-Object Microsoft.Crm.Sdk.Messages.PublishAllXmlRequest
$conn.Execute($publishRequest)

Write-Host "Completed."
