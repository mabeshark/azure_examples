$ErrorActionPreference = "Stop"

Remove-AzManagementGroupSubscription -GroupId 'sandbox' -SubscriptionId (Get-AzSubscription -SubscriptionName "sandbox subscription").Id
Remove-AzManagementGroupSubscription -GroupId 'dev' -SubscriptionId (Get-AzSubscription -SubscriptionName "dev subscription").Id
Remove-AzManagementGroupSubscription -GroupId 'qa' -SubscriptionId (Get-AzSubscription -SubscriptionName "uat subscription").Id
Remove-AzManagementGroupSubscription -GroupId 'qa' -SubscriptionId (Get-AzSubscription -SubscriptionName "qa subscription").Id
Remove-AzManagementGroupSubscription -GroupId 'prod' -SubscriptionId (Get-AzSubscription -SubscriptionName "prod subscription").Id