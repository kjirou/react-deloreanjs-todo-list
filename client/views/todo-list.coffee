{Flux} = require 'delorean'
React = require 'react'
{DOM} = React


TodoListItemView =
React.createClass
  displayName: 'TodoListItemView'

  render: ->
    React.createElement(
      'li'
      null
      @props.text
    )


exports.TodoListView =
React.createClass
  displayName: 'TodoListView'

  # DeLorean.js が一番頑張ってる処理
  # this.getStore で store インスタンスの取得が可能になり、更新毎に描画も行ってくれる。
  # this.props.dispatcher の設定が必要
  mixins: [Flux.mixins.storeListener]

  render: ->
    # ドキュメント https://github.com/deloreanjs/delorean/blob/master/docs/views.md だと
    # this.getStore('storeName') と書いてあるけど、それだと空オブジェクトが返ってきた？
    itemElements = @stores.todoList.store.todos.map (todo) ->
      React.createElement TodoListItemView,
        text: todo

    React.createElement(
      'ul'
      { className: 'ui list' }
      itemElements...
    )
