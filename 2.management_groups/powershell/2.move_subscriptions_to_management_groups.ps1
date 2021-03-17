$ErrorActionPreference = "Stop"

New-AzManagementGroupSubscription -GroupId 'sandbox' -SubscriptionId (Get-AzSubscription -SubscriptionName "sandbox subscription").Id
New-AzManagementGroupSubscription -GroupId 'dev' -SubscriptionId (Get-AzSubscription -SubscriptionName "dev subscription").Id
New-AzManagementGroupSubscription -GroupId 'qa' -SubscriptionId (Get-AzSubscription -SubscriptionName "uat subscription").Id
New-AzManagementGroupSubscription -GroupId 'qa' -SubscriptionId (Get-AzSubscription -SubscriptionName "qa subscription").Id
New-AzManagementGroupSubscription -GroupId 'prod' -SubscriptionId (Get-AzSubscription -SubscriptionName "prod subscription").Id