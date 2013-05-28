class TodoList.Views.TasksItem extends Backbone.View
  template: JST['tasks/item']
  tagName: 'li'

  events:
    'click .title': 'showTask'
    'click .destroy': 'destroyTask'

  showTask: ->
    Backbone.history.navigate("tasks/#{@model.get('id')}", true)

  destroyTask: ->
    @model.destroy()

  render: ->
    $(@el).html(@template(task: @model))
    this