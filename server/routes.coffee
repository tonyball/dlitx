###*
Main application routes
###

'use strict'

errors = require './components/errors'
path = require 'path'

module.exports = (app) ->

  # Insert routes below
  app.use '/api/userss', require './api/users'
  app.use '/api/examss', require './api/exams'
  app.use '/api/coursess', require './api/courses'
  app.use '/api/classroomss', require './api/classrooms'
  app.use '/api/chartss', require './api/charts'
  app.use '/api/badgess', require './api/badges'
  app.use '/api/things', require './api/thing'
  app.use '/api/users', require './api/user'
  app.use '/auth', require './auth'

  # All undefined asset or api routes should return a 404
  app.route('/:url(api|auth|components|app|bower_components|assets)/*').get errors[404]

  # All other routes should redirect to the index.html
  app.route('/*').get (req, res) ->
    res.sendFile path.resolve(app.get('appPath') + '/index.html')
