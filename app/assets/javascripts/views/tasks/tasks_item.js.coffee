class TodoList.Views.TasksItem extends Backbone.View
  template: JST['tasks/item']

  render: ->
  	this.template(task: this.model)