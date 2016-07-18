@CurrentReadings = React.createClass
  getInitialState: ->
    records: @props.data
  getDefaultProps: ->
    records: []
  render: ->
    React.DOM.div
      className: 'current-readings'
      React.DOM.h2
        className: 'title'
        'Records'