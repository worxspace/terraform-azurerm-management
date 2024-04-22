# output map of management groups and ids
output "id" {
  description = "The id of the management groups"
  value = {
    parent = azurerm_management_group.parent.id
    lz     = azurerm_management_group.landingzones-mg.id
  }
}
