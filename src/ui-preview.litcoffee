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
          callback?()
        preview = @$.preview
        full = @$.full
        full.fadeOut =>
          @removeAttribute 'expanded'
          preview.fadeIn callback

##Event Handlers
###expand
This will switch to a full expanded visual, but with a twist
that it fires an event before the expansion, with a callback
that will finish the animation. No handler for `expanding`? No problem
the animation will just run.

      expand: () ->
        if @hasAttribute 'expanded'
          return
        preview = @$.preview
        full = @$.full
        finishExpand = =>
          preview.fadeOut =>
            @setAttribute 'expanded', ''
            full.fadeIn()
        @fire 'expanding', finishExpand
        if not finishExpand.defer
          finishExpand()


##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
