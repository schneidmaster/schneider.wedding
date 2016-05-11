React                        = require('react')
{Link}                       = require('react-router')
{SectionsContainer, Section} = require('react-fullpage')
Countdown                    = require('react-count-down')
Gallery                      = require('react-image-gallery').default

module.exports = React.createClass
  displayName: 'Home'

  render: ->
    <SectionsContainer delay={250}>
      <Section id='cover' className='first'>
        <div className='content cover'>
          <div className='header'>
            <h1>Korando-Schneider Wedding</h1>
          </div>
          <div>
            <div className='info'>
              <div>
                <img src={require('img/photos/9.jpg')} alt='Zach + Becca' />
              </div>
              <div>
                <div className='vertical-center'>
                  <h2>Zach Schneider</h2>
                  <p className='and'>- and -</p>
                  <h2>Becca Korando</h2>
                  <h3>November 19, 2016</h3>
                  <h3>(<Countdown options={endDate: 1479600000000} />)</h3>
                </div>
              </div>
            </div>
          </div>
          <div className='rsvp'>
            <Link to='/rsvp' className='btn'>RSVP</Link>
          </div>
        </div>
      </Section>
      <Section>Page 2</Section>
      <Section>
        <div className='content gallery'>
          <div className='header'>
            <h1>Zach + Becca</h1>
          </div>
          <div className='gallery-wrapper'>
            <Gallery items={ { original: require("img/photos/#{i}.jpg"), thumbnail: require("img/photos/#{i}.thumb.jpg") } for i in [1..22] } />
          </div>
        </div>
      </Section>
    </SectionsContainer>
