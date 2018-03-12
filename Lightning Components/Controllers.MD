# Lightning Controllers


## [Basic Controllers](https://trailhead.salesforce.com/modules/lex_dev_lc_basics/units/lex_dev_lc_basics_controllers)
```handleClick: function(component, event, helper) {```
* Always declare your controller functions to take these three parameters.
    * component—the component. In this case, it’s helloMessageInteractive.
    * event—the event that caused the action handler to be called.
    * helper—the component’s helper, another JavaScript resource of reusable functions.

* Adding `{!c.handleClick}` to the onclick attribute of a `<lightning:button>` component (1) wires it up to the specific action handler. Calling `component.set("v.message", newMessage)` (2) wires up the result of that action handler to the component’s message attribute. Which is itself wired up to the `{!v.message}` expression.
