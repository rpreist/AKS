resource "azurerm_storage_account" "content" {
  resource_group_name       = azurerm_resource_group.main.name
  name                      = "mykontainer"
  location                  = "canadacentral"
  account_tier              = "Standard" # Or "Premium"
  account_replication_type  = "LRS"      # Options include LRS, GRS, RAGRS, ZRS, etc.
  # Additional optional arguments can be added here as needed
}

resource "azurerm_storage_container" "content" {
  storage_account_name = azurerm_storage_account.content.name
  name                 = "content"
  # By default, containers are private. To specify a different level of access
  container_access_type = "blob" # Options: "container", "blob", or "private"
}
