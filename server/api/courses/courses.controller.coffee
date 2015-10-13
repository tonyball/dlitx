'use strict'

_ = require 'lodash'
Courses = require './courses.model'

# Get list of coursess
exports.index = (req, res) ->
  Courses.find (err, coursess) ->
    return handleError res, err  if err
    res.status(200).json coursess

# Get a single courses
exports.show = (req, res) ->
  Courses.findById req.params.id, (err, courses) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not courses
    res.json courses

# Creates a new courses in the DB.
exports.create = (req, res) ->
  Courses.create req.body, (err, courses) ->
    return handleError res, err  if err
    res.status(201).json courses

# Updates an existing courses in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Courses.findById req.params.id, (err, courses) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not courses
    updated = _.merge courses, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json courses

# Deletes a courses from the DB.
exports.destroy = (req, res) ->
  Courses.findById req.params.id, (err, courses) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not courses
    courses.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
