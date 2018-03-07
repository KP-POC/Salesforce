# Code Highlights
* To appear in Community Builder in the Settings | Theme area, a theme layout component must implement the forceCommunity:themeLayout interface.
Add {!v.body} wherever you want the content, which changes from page to page, to appear within the theme layout.
Attributes declared as Aura.Component[] and included in your markup are rendered in the theme layout as open regions, which form the basic structure of your theme layout. Users can add drag-and-drop components to these regions in Community Builder.
The code uses the SLDS grid system to add structure to the layout.
