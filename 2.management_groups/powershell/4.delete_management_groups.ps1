$ErrorActionPreference = "Stop"

Remove-AzManagementGroup -GroupName 'sandbox'
Remove-AzManagementGroup -GroupId 'dev'
Remove-AzManagementGroup -GroupId 'qa'
Remove-AzManagementGroup -GroupId 'qa'
Remove-AzManagementGroup -GroupId 'prod'