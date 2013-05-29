class TodoList.Views.TasksShow extends Backbone.View
  template: JST['tasks/show']

  render: ->
    $(@el).html(@template(model: @model))
    this