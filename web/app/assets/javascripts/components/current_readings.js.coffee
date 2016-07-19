@CurrentReadings = React.createClass
  getInitialState: ->
    sensors: []
  getDefaultProps: ->
    sensors: @sensors
  loadSensorsFromServer: ->
    $.ajax
      url: @props.url
      dataType: 'json'
      success: (data) =>
        @setState {sensors: data}
      error: (xhr, status, err) ->
        console.error 'sensors/overview.json', status, err.toString()
  componentWillMount: ->
    @loadSensorsFromServer()
    setInterval @loadSensorsFromServer, @props.pollInterval      
  render: ->
    React.DOM.div
      className: 'current-readings'
      React.DOM.h2
        className: 'title'
        'Sensors'
      React.DOM.table
          className: 'table table-striped table-hover'
          React.DOM.thead null,
            React.DOM.tr null,
              React.DOM.th null, 'Name'
              React.DOM.th null, 'Reading'
              React.DOM.th null, 'Date Time'
          React.DOM.tbody null,
            for sensor in @state.sensors
              React.createElement Reading, key: sensor.id, sensor: sensor