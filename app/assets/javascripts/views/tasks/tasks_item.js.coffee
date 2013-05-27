class TodoList.Views.TasksItem extends Backbone.View
  template: JST['tasks/item']

  render: ->
  	@template(task: @model)