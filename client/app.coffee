_ = require 'lodash'
React = require 'react'

dispatcher = require 'client/dispatcher'
{TodoListStore} = require 'client/stores/todo-list'
{ScreenView} = require 'client/views/screen'


exports.App = class App

  constructor: ->
    @deps = @constructor.createDependencies()
    @_rootElement = React.createElement ScreenView,
      key: 'screen'
      # 唯一のStore/Dispatcher/Action群は、ルートのビューから伝搬させている
      # 他に方法がわからない..
      deps: @deps

  renderTo: (container) =>
    React.render @_rootElement, container

  @createDependencies = ->
    todoListStore = new TodoListStore
    {
      todoListStore: todoListStore
      Dispatcher: dispatcher.create { todoListStore }
    }
