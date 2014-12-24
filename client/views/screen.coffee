_ = require 'lodash'
React = require 'react'


exports.ScreenView =
React.createClass
  displayName: 'ScreenView'

  render: ->
    React.createElement(
      'div'
      { className: 'screen' }
    )
