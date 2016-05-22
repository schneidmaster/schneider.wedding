React                                                   = require('react')
{Row, Col, FormGroup, ControlLabel, FormControl, Radio} = require('react-bootstrap')
ajax                                                    = require('ajax-easy')

module.exports = React.createClass
  displayName: 'RSVP'

  getInitialState: ->
    {
      name: ''
      attend: null
      guest: null
      guestName: ''
    }

  submit: (e) ->
    e.preventDefault()

    ajax(
      url: 'https://docs.google.com/a/schneid.io/forms/d/1oDfplfEhylpoAMq_L53gJGspBo9sixztVWZHemQVif4/formResponse'
      type: 'post'
      data:
        'entry.2116930182': @state.name
        'entry.416515207': @state.attend
        'entry.2075158502': @state.guest
        'entry.243214034': @state.guestName
    )

  render: ->
    <div className='container-fluid'>
      <Row className='section rsvp vertical-align'>
        <Col xs=12>
          <Row>
            <h1>RSVP</h1>
          </Row>
          <Row>
            <Col md=4 mdOffset=4 xs=12>
              <form method='POST' className='rsvp' onSubmit={@submit}>
                <FormGroup>
                  <ControlLabel>Name</ControlLabel>
                  <FormControl type='text' value={@state.value} placeholder='John Weddinggoer' onChange={ (e) => @setState(name: e.target.value) } />
                </FormGroup>

                <FormGroup>
                  <ControlLabel>Will you attend?</ControlLabel>
                  <br />
                  <Radio inline checked={@state.attend is true} onChange={ (e) => @setState(attend: e.target.value is 'on') }>
                    Yes
                  </Radio>
                  {' '}
                  <Radio inline checked={@state.attend is false} onChange={ (e) => @setState(attend: e.target.value isnt 'on') }>
                    No
                  </Radio>
                </FormGroup>

                <FormGroup>
                  <ControlLabel>Are you bringing a guest?</ControlLabel>
                  <br />
                  <Radio inline checked={@state.guest is true} onChange={ (e) => @setState(guest: e.target.value is 'on') }>
                    Yes
                  </Radio>
                  {' '}
                  <Radio inline checked={@state.guest is false} onChange={ (e) => @setState(guest: e.target.value isnt 'on') }>
                    No
                  </Radio>
                </FormGroup>

                <FormGroup>
                  <ControlLabel>If yes, what is your guest's name?</ControlLabel>
                  <FormControl type='text' value={@state.value} placeholder='Jane Weddinggoer' onChange={ (e) => @setState(name: e.target.value) } />
                </FormGroup>

                <FormGroup className='rsvp-btn'>
                  <button type='submit' className='btn'>Submit RSVP</button>
                </FormGroup>
              </form>
            </Col>
          </Row>
        </Col>
      </Row>
    </div>
