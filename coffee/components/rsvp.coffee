React = require('react')
googleForm = require('google-form')

module.exports = React.createClass
  displayName: 'RSVP'

  render: ->
    <form method='POST' action='https://docs.google.com/a/schneid.io/forms/d/1oDfplfEhylpoAMq_L53gJGspBo9sixztVWZHemQVif4' onSubmit={googleForm.submitGoogleForm}>
 
      <label>name</label>
      <input type='text' name='YPqjbf' />
 
      <button type='submit'>Submit</button>
    </form>
