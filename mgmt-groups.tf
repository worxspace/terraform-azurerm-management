resource "azurerm_management_group" "parent" {
  name = var.tenant-short-name
}
resource "azurerm_management_group" "decom-mg" {
  name         = "${var.tenant-short-name}-decomissioned"
  display_name = "Decomissioned"

  subscription_ids = var.decommissioned-subs

  parent_management_group_id = azurerm_management_group.parent.id
}
resource "azurerm_management_group" "landingzones-mg" {
  name         = "${var.tenant-short-name}-lz"
  display_name = "Landing Zones"

  parent_management_group_id = azurerm_management_group.parent.id
}
resource "azurerm_management_group" "production" {
  name         = "${var.tenant-short-name}-lz-production"
  display_name = "Production"

  subscription_ids = var.production-subs

  parent_management_group_id = azurerm_management_group.landingzones-mg.id
}
resource "azurerm_management_group" "uat" {
  name         = "${var.tenant-short-name}-lz-uat"
  display_name = "UAT"

  subscription_ids = var.uat-subs

  parent_management_group_id = azurerm_management_group.landingzones-mg.id
}
resource "azurerm_management_group" "dev" {
  name         = "${var.tenant-short-name}-lz-dev"
  display_name = "Development"

  subscription_ids = var.uat-subs

  parent_management_group_id = azurerm_management_group.landingzones-mg.id
}
resource "azurerm_management_group" "platform" {
  name = "${var.tenant-short-name}-platform"
  display_name = "Platform"

  parent_management_group_id = azurerm_management_group.parent.id
}
resource "azurerm_management_group" "backup" {
  name         = "${var.tenant-short-name}-backup"
  display_name = "Backup"

  subscription_ids = var.backup-subs

  parent_management_group_id = azurerm_management_group.platform.id

}
resource "azurerm_management_group" "connectivity" {
  name         = "${var.tenant-short-name}-connectivity"
  display_name = "Connectivity"

  subscription_ids = var.connectivity-subs

  parent_management_group_id = azurerm_management_group.platform.id

}
resource "azurerm_management_group" "identity" {
  name         = "${var.tenant-short-name}-identity"
  display_name = "Identity"

  subscription_ids = var.identity-subs

  parent_management_group_id = azurerm_management_group.platform.id
}
resource "azurerm_management_group" "devops" {
  name         = "${var.tenant-short-name}-devops"
  display_name = "DevOps"

  subscription_ids = var.devops-subs

  parent_management_group_id = azurerm_management_group.platform.id
}
resource "azurerm_management_group" "management" {
  name         = "${var.tenant-short-name}-management"
  display_name = "Management"

  subscription_ids = var.management-subs

  parent_management_group_id = azurerm_management_group.platform.id
}
resource "azurerm_management_group" "sandboxes" {
  name         = "${var.tenant-short-name}-sandboxes"
  display_name = "Sandboxes"

  subscription_ids = var.sandboxes-subs

  parent_management_group_id = azurerm_management_group.parent.id
}
