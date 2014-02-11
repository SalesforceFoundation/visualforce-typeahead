visualforce-typeahead
=====================

A flexible typeahead component for use on Visualforce pages.  Uses the typeahead.js library from Twitter.

Note: The component depends on jQuery, which it loads automatically if your page doesn't already include it. However, if your page does load jQuery, it must be version 1.9+ to be compatible.

###possible improvements:
* pass in a function to call when something is selected (so they don't have to click a button)
* specify where to put errors (and then use an alert if not specified)
* list of extra fields to query
* function to render suggestion
* specify when to show secondary field (all the time or only when needed to make name unique)
