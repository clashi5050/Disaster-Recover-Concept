resource "azurerm_resource_group" "rg" {
  name     = "portfolio-devops-rg"
  location = "East US" 
}

# 2. App Service Plan (The Hosting Environment)
resource "azurerm_service_plan" "app_service_plan" {
  name                = "portfolio-app-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux" # Crucial: We are deploying a Linux container
  sku_name            = "B1"    # Basic tier, small size (for cost efficiency)
}

# 3. Linux Web App (The Application)
resource "azurerm_linux_web_app" "app" {
  name                = "devops-portfolio-app-12345" 
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id 

# Crucial: Configure the app to use a Docker container
  site_config {
    always_on = false 
    
    # Docker container settings
    application_stack {
      docker_image     = "nginx"       
      docker_image_tag = "latest"       
      
    }
  }
}

# 4. Output the App URL
output "app_url" {
  description = "The publicly accessible URL for the deployed application."
  value       = azurerm_linux_web_app.app.default_hostname
}