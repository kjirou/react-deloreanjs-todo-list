_ = require 'lodash'
React = require 'react'
{DOM} = React


TodoListItemView =
React.createClass
  displayName: 'TodoListItemView'

  render: ->
    React.createElement(
      'li'
      null
      'Aaaaaaaaaaaaaaaaaaaa'
    )


exports.TodoListView =
React.createClass
  displayName: 'TodoListView'

  render: ->
    React.createElement(
      'ul'
      { className: 'ui list' }
      React.createElement TodoListItemView, {}
      React.createElement TodoListItemView, {}
      React.createElement TodoListItemView, {}
      React.createElement TodoListItemView, {}
    )
