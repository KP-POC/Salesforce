# Code Highlights
* To appear in Community Builder in the Settings | Theme area, a theme layout component must implement the forceCommunity:themeLayout interface.
* Add {!v.body} wherever you want the content, which changes from page to page, to appear within the theme layout.
* Attributes declared as Aura.Component[] and included in your markup are rendered in the theme layout as open regions, which form the basic structure of your theme layout. Users can add drag-and-drop components to these regions in Community Builder.
* The code uses the SLDS grid system to add structure to the layout.
* Extending the abstract forceCommunity:navigationMenuBase component gives the new component automatic access to all the navigation menu items defined in the community’s Navigation Menu component. Admins can define and update the items in the Navigation Menu in Community Builder.
* To show the menu in action, this simple unordered list iterates through an array of menuItems, which is defined in the extended abstract component, and outputs <li> for each entry in the array.
