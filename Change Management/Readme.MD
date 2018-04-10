# Change Management

## Use Sandboxes and Change Sets for Safe Development

### Sandbox 
A sandbox is a copy of your production org. Sandboxes contain the same metadata—which is configuration information such as the types of custom objects and fields, applications, and workflows—as your production org. That metadata, as well as data in the case of a full sandbox, is copied to a new org, isolated from your production org. Operations you perform in your sandbox don’t affect your production org.

Because the sandbox is just a copy of your organization, you can’t harm production data or functionality. You can refresh the sandbox and start over, or import data and metadata from your production organization as needed, and depending on the timing of your sandbox refresh.

### Change Sets
Change sets allow you to validate changes before you send them to the target organization, providing another layer of safety. Because you can control which components are in a change set, you have fine-grained control over the deployment. Also, the target organization (in this scenario, the production organization) can choose when to deploy the change set it has received. 

### Sandbox Templates
Sandbox templates allow you to pick specific objects and data to copy to your Full or Partial Copy sandbox to control the size and content of each sandbox. Sandbox templates are only available for use with Full or Partial Copy sandboxes.
When you create a sandbox template, you select the object data (standard and custom) to copy during the creation or refresh of a sandbox.

### Create User Templates
Refreshing a sandbox creates a new copy of the production organization. This means that all user permissions within the sandbox are copied from production, and that user access or permissions changes you made in the sandbox before it was refreshed must be reapplied. If you have multiple sandboxes, or refresh sandboxes on a regular basis, consider creating a developer user template on your production organization. A developer user template is an abstract user that has permissions required to develop on the sandbox (for example, the “Modify All Data” permission), but is not active on your production organization. After you create or refresh a sandbox, you activate the developer user in the sandbox and assign it to the individual who will be developing there.

To create a developer template:
* Create a new user on your production organization.
* Edit the user to give it the necessary permissions.
* Deactivate the user on the production organization.
* Create or refresh a sandbox.
* Activate the user on the sandbox.
* Optionally change the email address, password, or other environmental settings.

### Manage Sandboxes
To manage a sandbox, from Setup enter Sandboxes in the Quick Find box, then select Sandboxes. A list of your existing sandboxes displays.

* Click New Sandbox to create a sandbox. Salesforce deactivates the New Sandbox button when an organization reaches its sandbox limit. If necessary, contact Salesforce to order more sandboxes for your organization.
* Click Sandbox History to see a log of your sandbox refresh history, including when sandboxes were created and who created them.
* Click Refresh to replace an existing sandbox with a new copy. Salesforce only displays the Refresh link for sandboxes that are eligible for refreshing, which varies for different types of sandboxes. Your existing copy of this sandbox remains available while you wait for the refresh to complete. The refreshed copy is inactive until you activate it.
* Click Activate to activate a refreshed sandbox. You must activate your refreshed sandbox before you can access it. Salesforce only displays this option for sandboxes that are not activated.
Activating a refreshed sandbox replaces the existing sandbox with the refreshed version, permanently deleting the existing version and all data in it. Your production organization and its data aren’t affected.
* Click Del to delete a sandbox.
Deleting a sandbox permanently erases the sandbox and all data in it, including any outbound change sets that have been uploaded from the sandbox.
* Administrators can click Login to log in to a sandbox as a user. Salesforce only displays this option for active sandboxes. Users can log in to the sandbox at https://test.salesforce.com by appending .sandbox_name to their Salesforce usernames. For example, if a username for a production org is user1@acme.com, and the sandbox is named “test,” the modified username to log in to the sandbox is user1@acme.com.test.
* Click a sandbox name to view details about the sandbox, including the sandbox type and when it was created.

### Resources
* []()



### Change sets make deploying changes easier.
* Change sets represent sets of customizations in your org (or metadata components) that you can deploy to a connected org. Use change sets as a point-and-click tool to migrate your customizations.
* There’s no need to download files to a local file system. Other deployment methods require you to work with local files.
* The change set tool helps you discover and include dependent components. For example, a new custom field can’t be migrated if the custom object it belongs to doesn’t exist in the target org.
* You define the set of components once. You can reuse the same set of components for another deployment by cloning the change set. Cloning change sets is helpful during the iterative phases of a project.
