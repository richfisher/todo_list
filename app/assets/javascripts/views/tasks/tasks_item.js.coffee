class TodoList.Views.TasksItem extends Backbone.View
  template: JST['tasks/item']

  events:
    'click': 'showEntry'

  showEntry: ->
    Backbone.history.navigate("tasks/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(task: @model))
    this