# Change Management

## Use Sandboxes and Change Sets for Safe Development

### Sandbox 
A sandbox is a copy of your production org. Sandboxes contain the same metadata—which is configuration information such as the types of custom objects and fields, applications, and workflows—as your production org. That metadata, as well as data in the case of a full sandbox, is copied to a new org, isolated from your production org. Operations you perform in your sandbox don’t affect your production org.

ecause the sandbox is just a copy of your organization, you can’t harm production data or functionality. You can refresh the sandbox and start over, or import data and metadata from your production organization as needed, and depending on the timing of your sandbox refresh.

### Change Sets
Change sets allow you to validate changes before you send them to the target organization, providing another layer of safety. Because you can control which components are in a change set, you have fine-grained control over the deployment. Also, the target organization (in this scenario, the production organization) can choose when to deploy the change set it has received. 




