RadioOption = React.createClass
  displayName: 'RadioOption'
  getDefaultProps: ->
    onSelect: ->
    label: 'Label'
    selected: false

  render: () ->
    className = if @props.selected then 'selected' else ''

    React.DOM.a {href: '#', className: className, onClick: @props.onSelect}, @props.label

module.exports = RadioOption
