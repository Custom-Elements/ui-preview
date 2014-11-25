#ui-preview
A transition view that lets you see a preview and then click ... to see more.


    Polymer 'ui-preview',

##Events

##Attributes and Change Handlers

      expandedChanged: ->
        console.log 'yo', @hasAttribute 'expanded'

##Methods

##Event Handlers

      expand: ->
        preview = @$.preview
        full = @$.full
        anim = preview.animate [
          {opacity: 1, transform: 'translateY(0)', offset: 0}
          {opacity: 0, transform: 'translateY(10%)', offset: 1}
          ], duration: 200, easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"
        anim.onfinish = =>
          @setAttribute 'expanded', ''
          anim = full.animate [
            {opacity: 0, transform: 'translateY(10%)', offset: 0}
            {opacity: 1, transform: 'translateY(0%)', offset: 1}
            ], duration: 200, easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"

      collapse: ->
        preview = @$.preview
        full = @$.full
        anim = full.animate [
          {opacity: 1, transform: 'translateY(0)', offset: 0}
          {opacity: 0, transform: 'translateY(10%)', offset: 1}
          ], duration: 200, easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"
        anim.onfinish = =>
          @removeAttribute 'expanded'
          anim = preview.animate [
            {opacity: 0, transform: 'translateY(10%)', offset: 0}
            {opacity: 1, transform: 'translateY(0%)', offset: 1}
            ], duration: 200, easing: "0.2s cubic-bezier(0.4, 0.0, 1, 1)"

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
