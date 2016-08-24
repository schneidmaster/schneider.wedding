React      = require('react')
{Row, Col, Button} = require('react-bootstrap')

module.exports = React.createClass
  displayName: 'RSVP'

  render: ->
    <div className='container-fluid'>
      <Row className='section rsvp vertical-align'>
        <Col xs=12>
          <Row>
            <h1>RSVP</h1>
          </Row>
          <Row>
            <Col md=4 mdOffset=4 xs=12>
              <iframe style={height: '600px', width: '100%', border: 'none'} onload='window.parent.scrollTo(0,0)' allowtransparency='true' src='https://korandoschneider.app.rsvpify.com/app/?embed=1&js=1' frameborder='0' />

              <div className='rsvp-btn'>
                <a href='/'>
                  <Button>Home</Button>
                </a>
              </div>
            </Col>
          </Row>
        </Col>
      </Row>
    </div>
