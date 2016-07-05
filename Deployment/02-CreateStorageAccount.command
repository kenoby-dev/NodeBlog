export location="{Enter Azure data centre location for storage account, i.e. Australia East}"
export storage_sku="{Enter storage account sku, i.e. LRS}"
export storage_account_name="{Enter Storage Account Name Here}"

# Switch mode to resource manager
azure config mode arm

# Login to Azure
azure login

# Create a new storage account
echo "Creating storage account..."
azure storage account create --sku-name $storage_sku --kind storage --location $location --resource-group "NodeBlog" $storage_account_name

# Display the connection string
azure storage account connectionstring show --resource-group "NodeBlog" $storage_account_name

# List all the storage accounts
echo "Listing storage accounts..."
azure storage account list
