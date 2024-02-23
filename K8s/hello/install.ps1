# Retrieve the storage account keys and convert from JSON
$keys = az storage account keys list `
  --resource-group "com.icondigiital" `
  --account-name "mykontainer" | ConvertFrom-Json

# Run Helm upgrade with the retrieved storage account key
helm upgrade `
  --install `
  --namespace icondigiital `
  --create-namespace `
  --set "storageAccountKey=$($keys[0].value)" `
  icondigiital `
  ./
