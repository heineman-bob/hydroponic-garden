@Reading = React.createClass
  render: ->
    React.DOM.div
      className: 'well'
      React.DOM.td null, @props.sensors.name
      React.DOM.td null, @props.sensors.Reading