#ui-preview
A transition view that lets you see a preview and then click to see more.

    require 'ui-styles/animations'
    Polymer 'ui-preview',

##Events
###expanded
Fires when an item switches to the expanded view.
###expanding
Fires when an item is about to be expanded, but is not yet.

##Attributes and Change Handlers

      expandedChanged: ->
        if @hasAttribute 'expanded'
          @fire 'expanded', @

##Methods
###collapse
This is not an event handler, it is just a method.

      collapse: (callback) ->
        if not @hasAttribute 'expanded'
          return
        preview = @$.preview
        full = @$.full
        preview.removeAttribute 'hidden'
        full.setAttribute 'hidden', ''
        @removeAttribute 'expanded'
        callback?()

###expand
This will switch to a full expanded visual, but with a twist
that it fires an event before the expansion, with a callback.

      expand: (callback) ->
        if @hasAttribute 'expanded'
          return
        preview = @$.preview
        full = @$.full
        preview.setAttribute 'hidden', ''
        full.removeAttribute 'hidden'
        @setAttribute 'expanded', ''
        callback?()

##Event Handlers

      onExpand: ->
        @expand()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
