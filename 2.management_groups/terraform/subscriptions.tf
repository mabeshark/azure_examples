data "azurerm_subscription" "sandbox" {
  subscription_id = "b80fc28a-59e8-463b-87b5-6ab2fb2fbedb"
}

data "azurerm_subscription" "dev" {
  subscription_id = "1ce3fbcb-4685-4d84-a7fb-d50b1f8833bd"
}

data "azurerm_subscription" "qa" {
  subscription_id = "11d66b05-1ce9-46a3-b822-a5356dff4767"
}

data "azurerm_subscription" "uat" {
  subscription_id = "1950cf36-1a2f-48dc-9b00-c584ad1819a7"
}

data "azurerm_subscription" "prod" {
  subscription_id = "93054232-70a8-486d-baa6-ceed8955bfb9"
}