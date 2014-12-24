{Flux} = require 'delorean'


exports.TodoListStore =
Flux.createStore
  todos: [],

  addTodo: (todo) ->
    @todo.push todo
    @emit 'change'

  actions:
    # 'add-todo' アクションを this.addTodo へマッピング
    'add-todo': 'addTodo'
