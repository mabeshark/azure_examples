data "azurerm_resource_group" "policy_testing_1" {
  name     = "policy_testing_1"
}

resource "random_integer" "example" {
  min = 1000000
  max = 10000000
  
}

resource "azurerm_storage_account" "policy_testing_storage_account" {
  name                     = "policytesting${random_integer.example.result}"
  resource_group_name      = data.azurerm_resource_group.policy_testing_1.name
  location                 = data.azurerm_resource_group.policy_testing_1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Uncomment to allow creation without being blocked by Azure Policy
  #tags = {
  #  cost_center = "123456"
  #}
} 