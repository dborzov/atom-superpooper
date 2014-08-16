{View} = require 'atom'

module.exports =
class SuperpooperView extends View
  @content: ->
    @div class: 'superpooper overlay from-top', =>
      @div "The Superpooper package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "superpooper:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "SuperpooperView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
