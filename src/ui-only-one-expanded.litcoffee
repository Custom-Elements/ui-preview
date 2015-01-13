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

      trap: (evt) ->
        evt.stopPropagation()

##Polymer Lifecycle

      created: ->

      ready: ->

###attached

      attached: ->

      domReady: ->

      detached: ->
