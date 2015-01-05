#ui-only-one-expanded
Look across a set of things, and make sure at most one, the most recent
expanded item stays expanded.

    require 'ui-styles/animations'
    Polymer 'ui-only-one-expanded',

##Events

##Attributes and Change Handlers


##Methods
###collapse
Collapse all the collapseable things.

      collapse: ->
        expandedElements = @querySelectorAll 'ui-only-one-expanded /deep/ [expanded]'
        expandedElements.array().forEach (expandedElement) ->
          expandedElement?.collapse()

##Event Handlers

      enforce: (evt, recentlyExpandedElement) ->
        expandedElements = @querySelectorAll 'ui-only-one-expanded /deep/ [expanded]'
        expandedElements.array().forEach (expandedElement) ->
          if expandedElement isnt recentlyExpandedElement
            expandedElement?.collapse()

      hideThenShow: (evt, callback) ->
        expandedElement = @querySelector 'ui-only-one-expanded /deep/ [expanded]'
        if expandedElement and expandedElement?.collapse
          callback.defer = true
          expandedElement.collapse callback

      trap: (evt) ->
        evt.stopPropagation()

##Polymer Lifecycle

      created: ->

      ready: ->

###attached
On attach, set up a global click handler, this will make clicking 'out' of the
preview collapse all the things, working together with the `trap` handler which
makes it so you can actually click things to expand them.

      attached: ->
        document.addEventListener 'click', => @collapse()

      domReady: ->

      detached: ->
