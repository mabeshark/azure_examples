resource "azurerm_management_group" "company_root" {
  name = "company_root"
  display_name = "company_root"
}

resource "azurerm_management_group" "sandbox" {
  depends_on = [
    azurerm_management_group.company_root
  ]

  name = "sandbox"
  display_name = "sandbox"
  parent_management_group_id = azurerm_management_group.company_root.id

  subscription_ids = [
    data.azurerm_subscription.sandbox.subscription_id
  ]
}

resource "azurerm_management_group" "dev" {
  depends_on = [
    azurerm_management_group.company_root
  ]
  
  name = "dev"
  display_name = "dev"
  parent_management_group_id = azurerm_management_group.company_root.id

  subscription_ids = [
    data.azurerm_subscription.dev.subscription_id
  ]
}

resource "azurerm_management_group" "qa" {
  depends_on = [
    azurerm_management_group.company_root
  ]

  name = "qa"
  display_name = "qa"
  parent_management_group_id = azurerm_management_group.company_root.id

  subscription_ids = [
    data.azurerm_subscription.qa.subscription_id,
    data.azurerm_subscription.uat.subscription_id
  ]
}

resource "azurerm_management_group" "prod" {
  depends_on = [
    azurerm_management_group.company_root
  ]

  name = "prod"
  display_name = "prod"
  parent_management_group_id = azurerm_management_group.company_root.id

  subscription_ids = [
    data.azurerm_subscription.prod.subscription_id
  ]
}


