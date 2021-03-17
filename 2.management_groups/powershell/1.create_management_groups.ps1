$ErrorActionPreference = "Stop"

New-AzManagementGroup -GroupId "company_root" -DisplayName "company_root"
New-AzManagementGroup -GroupId "sandbox" -DisplayName "sandbox" -ParentId "/providers/Microsoft.Management/managementGroups/company_root"
New-AzManagementGroup -GroupId "dev" -DisplayName "dev" -ParentId "/providers/Microsoft.Management/managementGroups/company_root"
New-AzManagementGroup -GroupId "qa" -DisplayName "qa" -ParentId "/providers/Microsoft.Management/managementGroups/company_root"
New-AzManagementGroup -GroupId "prod" -DisplayName "prod" -ParentId "/providers/Microsoft.Management/managementGroups/company_root"