$random_number = Get-Random -Minimum 10000 -Maximum 100000

Set-AzContext -Subscription "sandbox subscription"

New-AzStorageAccount -Name "policytesting$random_number" `
                     -ResourceGroupName "policy_testing_1" `
                     -SkuName Standard_LRS `
                     -Location eastus `
                     -Tag @{"cost_center" = "342345"}