#ui-only-one-expanded
Look across a set of things, and make sure at most one, the most recent
expanded item stays expanded.


    Polymer 'ui-only-one-expanded',

##Events

##Attributes and Change Handlers


##Methods

##Event Handlers

      enforce: (evt) ->
        console.log evt
        expandedElements = @querySelectorAll 'ui-only-one-expanded /deep/ [expanded]'
        expandedElements.array().forEach (expandedElement) ->
          if expandedElement isnt evt.target
            expandedElement?.collapse()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
