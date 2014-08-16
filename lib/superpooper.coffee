module.exports =
  activate: -> atom.workspaceView.command "superpooper:claim", => @claim()

  claim: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem
    editor.insertText('Superpooper the atom package! Someday you will lead millions! Willingly or as slaves')
