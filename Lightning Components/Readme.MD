### Content:
1. [Client-Side Controllers](#client-side-controllers)
2. [View-Controller-Controller-Model](#view-controller-controller-model)
3. [Invoke An Action on Component Initialization](#invoke-an-action-on-component-initialization)


# Lightning Framework

Lightning Components is a UI framework for developing web apps for mobile and desktop devices. It’s a framework for building single-page applications with dynamic, responsive user interfaces for Lightning Platform apps. It uses JavaScript on the client side and Apex on the server side.

Lightning Component is XML markup, and mixes both static HTML tags with custom Lightning Components tags.  In Lightning Components, a component is a bundle of code. It can include markup and it can also include JavaScript code. Related resources are “auto-wired” to each other, and together they make up the component bundle.  

You can use Lightning Components to create stand-alone apps that are hosted on Salesforce. And you can even create apps that are hosted on other platforms, including embedding them into apps from those platforms.

Build custom user interfaces using your own Lightning components, or those you install from AppExchange, for desktop and mobile devices.

## Where You Can Use Lightning Components
* [Add Apps to the Lightning Experience App Launcher](https://trailhead.salesforce.com/modules/lex_dev_lc_basics/units/lex_dev_lc_basics_intro)
* Add Apps to Lightning Experience and Salesforce App Navigation
* Create Drag-and-Drop Components for Lightning App Builder and Community Builder
* Add Lightning Components to Lightning Pages
* Add Lightning Components to Lightning Experience Record Pages
* Launch a Lightning Component as a Quick Action
* Override Standard Actions with Lightning Components
* Create Stand-Alone Apps
* Run Lightning Components Apps Inside Visualforce Pages
* Run Lightning Components Apps on Other Platforms with Lightning Out
* Customize Flow Screens
* [Lightning Apps Developer Center](https://developer.salesforce.com/devcenter/lightning)

## Steps to Configure Lightning Framework
To use Lightning Components, the Salesforce org needs to have a custom domain configured using My Domain.  My Domain is a way to use Salesforce from a customized URL, rather than a generic Salesforce instance URL.  Once you have a custom domain, you’ll use Salesforce at https://yourDomain.my.salesforce.com/, which is reserved exclusively for your org’s use.

Steps to configure My Domain:
* From Setup, enter My Domain in the Quick Find box, then select My Domain.
* Enter the name for your subdomain after https:// and click Check Availability. 
* Click Register Domain.



# Lightning Components
* Controller - is a resource in a component bundle that holds the action handlers for that component. And action handlers are just JavaScript functions with a particular function signature.  JavaScript objects that contain a map of name-value pairs, where the name is the name of the action handler and the value is a function definition.

* A name–value pair, key–value pair, field–value pair or attribute–value pair is a fundamental data representation in computing systems and applications. Designers often desire an open-ended data structure that allows for future extension without modifying existing code or data. In such situations, all or part of the data model may be expressed as a collection of tuples `<attribute name, value>`; each element is an attribute–value pair. Depending on the particular application and the implementation chosen by programmers, attribute names may or may not be unique.
* Action-handler = The combination of name-value pair and specific function signature.

## Client-Side Controllers
Controller functions, also known as actions, handle user interactions.  This component displays a string and a button, which when pressed updates the string value.

```html
<aura:component>
  <aura:attribute name="myText" type="String" default="A string waiting to change"/>
    {!v.myText}
  <ui:button label="Go" press="{!c.change}"/>
</aura:component>
```
The Controller action:
```javascript
change: function(cmp, event, handler) {
    cmp.set("v.myText", "new string");
    helper.doSomething(cmp);
}
```
The helper resource takes the following form:
```javascript
doSomething : function(cmp, myObj) {
  // Do something else here
}
```
## View-Controller-Controller-Model
* Lightning Components is View-Controller-Controller-Model, or perhaps View-Controller-Controller-Database.

* When interacting with Salesforce, components will have a server-side controller in addition to the client-side controller we’ve worked with in this unit. This dual controller design is the key difference between Lightning Components and MVC.

* In traditional MVC, the model is a programmatic abstraction (usually a class) between the underlying data storage (usually a relational database) and the rest of the application. In Lightning Components, there’s no Apex class that directly stands in between `@AuraEnabled` controller methods and DML operations. But then again, sObjects are already an abstraction between your Apex code and the underlying storage layer. You can add calculation fields, validation logic, and even add fully programmatic behavior in the form of triggers. 

## Invoke An Action on Component Initialization
* Add the `init` handler and handle the event in the `doInit` action in your client-side controller.
* `<aura:handler name="init" value="{!this}" action="{!c.doInit}" />`

## Client-Side Controllers

## Resources
* [Working with UI Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/ui_overview.htm)
* [Using the UI Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/ui_input.htm)
* [Actions and Events](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/events_and_actions.htm)
* [Handling Events with Client-Side Controllers](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/js_client_side_controller.htm)
* [Which Button Was Pressed?](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/js_cb_which_button_pressed.htm) 
* [Enable Debug Mode for Lightning Components](https://developer.salesforce.com/docs/atlas.en-us.212.0.lightning.meta/lightning/aura_debug_mode.htm)
