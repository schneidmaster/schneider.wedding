React = require('react')
$     = require('jquery')

module.exports = React.createClass
  displayName: 'RSVP'

  submit: (e) ->
    e.preventDefault()
    response =
      'entry.2116930182': $('#name').val()
      'entry.416515207': $('#attend_yes').is(':checked')
      'entry.2075158502': $('#guest_yes').is(':checked')
      'entry.243214034': $('#guest_name').val()

    $.post 'https://docs.google.com/a/schneid.io/forms/d/1oDfplfEhylpoAMq_L53gJGspBo9sixztVWZHemQVif4/formResponse', response

  render: ->
    <div className='section'>
      <div className='content'>
        <h1>RSVP</h1>
        <form method='POST' className='rsvp' onSubmit={@submit}>
     
          <label htmlFor='name'>Name</label>
          <input id='name' type='text' name='entry.2116930182' placeholder='John Weddinggoer' />

          <label>Will you attend?</label>

          <label htmlFor='attend_yes' className='checkbox'>
            <input id='attend_yes' type='radio' name='entry.416515207' /> Yes
          </label>
          <label htmlFor='attend_no' className='checkbox'>
            <input id='attend_no' type='radio' name='entry.416515207' /> No
          </label>

          <label>Are you bringing a guest?</label>

          <label htmlFor='guest_yes' className='checkbox'>
            <input id='guest_yes' type='radio' name='entry.2075158502' /> Yes
          </label>
          <label htmlFor='guest_no' className='checkbox'>
            <input id='guest_no' type='radio' name='entry.2075158502' /> No
          </label>

          <label htmlFor='guest_name'>If yes, what is your guest's name?</label>
          <input id='guest_name' type='text' name='entry.243214034' placeholder='Jane Weddingguest' />

          <button type='submit'>Submit RSVP</button>

        </form>
      </div>
    </div>
