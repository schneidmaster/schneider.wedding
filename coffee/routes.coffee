React     = require('react')
{Route} = require('react-router')

# Require route components.
App  = require('components/app')
Home = require('components/home')
RSVP = require('components/rsvp')

module.exports = (
  <Route component={App}>
    <Route path='/' component={Home} />
    <Route path='/rsvp' component={RSVP} />
  </Route>
)
