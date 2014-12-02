#ui-only-one-expanded
Look across a set of things, and make sure at most one, the most recent
expanded item stays expanded.

    require 'ui-styles/animations'
    Polymer 'ui-only-one-expanded',

##Events

##Attributes and Change Handlers


##Methods

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

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
