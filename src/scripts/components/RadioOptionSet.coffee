RadioOption = require('./RadioOption.coffee')

RadioOptionSet = React.createClass
  displayName: 'RadioOptionSet'
  getDefaultProps: ->
    options: []
    selectedOption: null

  getInitialState: ->
    selectedOption: @props.selectedOption

  render: () ->
    React.DOM.div {className: 'radio-option-set'},
      @props.options.map (option, idx) =>
        new RadioOption label: option.label, value: option.value, onSelect: @handleOptionSelect, selected: @_isSelected(idx)

  handleOptionSelect: (event) ->
    selected = @props.options.map((option, idx) -> option.label).indexOf(event.target.innerHTML)
    if typeof selected == 'number'
      event.preventDefault()
      @setState selectedOption: selected

  _isSelected: (idx) ->
    idx == @state.selectedOption

module.exports = RadioOptionSet
