RadioOptionSet = require('./RadioOptionSet.coffee')

StarterApp = React.createClass
  render: () ->
    React.DOM.div {className: 'row'},
      React.DOM.div {className: 'col-md-3'},
        React.DOM.p {},
          'You can save money on energy'
          new RadioOptionSet selectedOption: 1, options: [
              { label: 'wind', value: 0 },
              { label: 'solar', value: 1 },
              { label: 'exercise', value: 2 }
            ]
        React.DOM.p {},
          'You can save money on gas'
          new RadioOptionSet selectedOption: 2, options: [
              { label: 'bike', value: 0 },
              { label: 'hybrid', value: 1 },
              { label: 'electric', value: 2 }
            ]
        React.DOM.p {},
          'You can save money on hydro'
          new RadioOptionSet selectedOption: 0, options: [
              { label: 'no flushing', value: 0 },
              { label: 'no showers', value: 1 },
              { label: 'no drinking', value: 2 }
            ]
        React.DOM.p {},
          React.DOM.button {className: 'btn btn-brand btn-block'}, 'Find Out More'

module.exports = StarterApp
