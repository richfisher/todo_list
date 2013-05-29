class TodoList.Views.TasksShow extends Backbone.View
  template: JST['tasks/show']

  initialize: ->
    @model.bind 'reset',  @render, this

  render: ->
    $(@el).html(@template(model: @model))
    this