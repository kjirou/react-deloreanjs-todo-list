_ = require 'lodash'
React = require 'react'

dispatcher = require 'client/dispatcher'
{TodoListStore} = require 'client/stores/todo-list'
{ScreenView} = require 'client/views/screen'


exports.App = class App

  constructor: ->
    @deps = @constructor.createSingletons()
    @_rootElement = React.createElement ScreenView,
      key: 'screen'
      # React Component で Flux.mixins.storeListener を使いたい場合は必須の設定
      dispatcher: @deps.Dispatcher
      # 他の唯一のインスタンスもトップから伝搬させる
      # オレオレだけど、副作用を発生しないようにする場合、他に方法がわからない！
      deps: @deps

  renderTo: (container) =>
    React.render @_rootElement, container

  @createSingletons = ->
    todoListStore = new TodoListStore

    Dispatcher = dispatcher.create { todoListStore }

    # DeLorean.js 的には、ActionCreators は必須ではないとのこと。
    # あと、README には Actions って書いてあるのは間違いか？
    #（個別のドキュメントでは ActionCreators となっている）
    ActionCreator =
      addTodo: (todo) -> Dispatcher.addTodo todo

    {
      todoListStore: todoListStore
      Dispatcher: Dispatcher
      ActionCreator: ActionCreator
    }
