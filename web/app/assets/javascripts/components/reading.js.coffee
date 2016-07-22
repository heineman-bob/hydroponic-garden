@Reading = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null,
        @props.sensor.name
      React.DOM.td null,
        @props.sensor.reading  
      React.DOM.td null,
        @props.sensor.created_at
    
    
