export location="{Enter Azure data centre location for storage account, i.e. Australia East}"

# Switch mode to resource manager
azure config mode arm

# Login to Azure
azure login

# Create the resource group
azure group create -n "NodeBlog" -l $location
