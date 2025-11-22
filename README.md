This project specifically showcases four critical, modern DevOps competencies
*  Demonstrate Infrastructure Automation (IaC)
*  Cloud Integration (Azure)
*  Implement Professional State Management
*  Bridge Docker to PaaS

Business Value 
We set things up so our systems can be rebuilt quickly and consistently across different environments (like Dev, Stage, and Prod). If something goes wrong, we can recover fast, and every environment looks and behaves the same. On top of that, we’re showing that we can safely share and manage the setup details using Remote State.

Key Learnings 
How to connect and configure Azure so Terraform knows where to build things.

How to make sure resources are created in the right order so nothing breaks.

How to use Terraform outputs to easily share important info (like connection strings or IDs) with the team or other parts of the setup.

If you are receiving in error in your lab for a higher quota:

How to request a quota increase (Azure Portal — recommended)

Sign in to the Azure Portal.
Search for and open "Help + support".
Click "Create a support request".
For Issue type choose "Service and subscription limits (quotas)".
Select Subscription, then Service: "Virtual Machines" (or "Compute"), Quota type: "Cores (vCPUs) - Regional".
Pick the Region and the SKU family relevant to your App Service Plan (the message referenced "Basic VMs" — choose the relevant family), request a new limit > 0.
Submit the request — support will process (time varies). You may need subscription owner permissions.