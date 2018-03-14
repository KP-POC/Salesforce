Steps to send the events:
  1. Define a custom event by creating a Lightning Event, giving it a name and attributes.
  2. Register your component to send these events, by choosing a custom event type and giving this specific use of that type a name.
  3. Fire the event in your controller (or helper) code by:
      * Using component.getEvent() to create a specific event instance.
      * Sending the event with fire().
