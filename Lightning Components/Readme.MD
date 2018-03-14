# Lightning Components
* Controller - is a resource in a component bundle that holds the action handlers for that component. And action handlers are just JavaScript functions with a particular function signature.  JavaScript objects that contain a map of name-value pairs, where the name is the name of the action handler and the value is a function definition.

* A name–value pair, key–value pair, field–value pair or attribute–value pair is a fundamental data representation in computing systems and applications. Designers often desire an open-ended data structure that allows for future extension without modifying existing code or data. In such situations, all or part of the data model may be expressed as a collection of tuples `<attribute name, value>`; each element is an attribute–value pair. Depending on the particular application and the implementation chosen by programmers, attribute names may or may not be unique.
* Action-handler = The combination of name-value pair and specific function signature.

## View-Controller-Controller-Model
* Lightning Components is View-Controller-Controller-Model, or perhaps View-Controller-Controller-Database.

* When interacting with Salesforce, components will have a server-side controller in addition to the client-side controller we’ve worked with in this unit. This dual controller design is the key difference between Lightning Components and MVC.

* In traditional MVC, the model is a programmatic abstraction (usually a class) between the underlying data storage (usually a relational database) and the rest of the application. In Lightning Components, there’s no Apex class that directly stands in between `@AuraEnabled` controller methods and DML operations. But then again, sObjects are already an abstraction between your Apex code and the underlying storage layer. You can add calculation fields, validation logic, and even add fully programmatic behavior in the form of triggers. 

## Resources
* [Working with UI Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/ui_overview.htm)
* [Using the UI Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/ui_input.htm)
* [Actions and Events](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/events_and_actions.htm)
* [Handling Events with Client-Side Controllers](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/js_client_side_controller.htm)
* [Which Button Was Pressed?](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/js_cb_which_button_pressed.htm) 
* [Enable Debug Mode for Lightning Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/aura_debug_mode.htm)