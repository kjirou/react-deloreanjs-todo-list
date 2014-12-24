_ = require 'lodash'
React = require 'react'

{ScreenView} = require 'client/views/screen'


exports.App = class App

  constructor: ->
    @_rootElement = React.createElement ScreenView,
      key: 'screen'

  renderTo: (container) =>
    React.render @_rootElement, container
