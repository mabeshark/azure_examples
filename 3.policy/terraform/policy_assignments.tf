data "azurerm_policy_definition" "require_tag_on_resources" {
  name = "871b6d14-10aa-478d-b590-94f262ecfa99"
}

data "azurerm_management_group" "sandbox" {
  name = "sandbox"
}

resource "azurerm_policy_assignment" "require_tag_cost_center_on_resources" {
  # Policy assignment name must be unique and length cannot exceed '24' characters, for example, the id 7e6f7be68a95de4bdba141c8 below:
  # /providers/Microsoft.Management/managementGroups/sandbox/providers/Microsoft.Authorization/policyAssignments/7e6f7be68a95de4bdba141c8
  name                 = substr(sha256("require_tag_cost_center_on_resources"), 0, 24) 
  scope                = data.azurerm_management_group.sandbox.id
  policy_definition_id = data.azurerm_policy_definition.require_tag_on_resources.id
  description          = "Policy Assignment created via Terraform"
  display_name         = "Require tag 'cost_center' on all resources"
 
    metadata = <<METADATA
    {
    "category": "General"
    }
METADATA

  parameters = <<PARAMETERS
{
  "tagName": {
    "value":  "cost_center" 
  }
}
PARAMETERS

}