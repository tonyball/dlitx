'use strict'

_ = require 'lodash'
Classrooms = require './classrooms.model'

# Get list of classroomss
exports.index = (req, res) ->
  Classrooms.find (err, classroomss) ->
    return handleError res, err  if err
    res.status(200).json classroomss

# Get a single classrooms
exports.show = (req, res) ->
  Classrooms.findById req.params.id, (err, classrooms) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not classrooms
    res.json classrooms

# Creates a new classrooms in the DB.
exports.create = (req, res) ->
  Classrooms.create req.body, (err, classrooms) ->
    return handleError res, err  if err
    res.status(201).json classrooms

# Updates an existing classrooms in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Classrooms.findById req.params.id, (err, classrooms) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not classrooms
    updated = _.merge classrooms, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json classrooms

# Deletes a classrooms from the DB.
exports.destroy = (req, res) ->
  Classrooms.findById req.params.id, (err, classrooms) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not classrooms
    classrooms.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
