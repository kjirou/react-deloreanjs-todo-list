{Flux} = require 'delorean'


exports.TodoListStore =
Flux.createStore
  todos: []

  addTodo: (todo) ->
    if todo isnt ''
      @todos.push todo
    @emit 'change'

  actions:
    # 'add-todo' アクションを this.addTodo へマッピング
    'add-todo': 'addTodo'
