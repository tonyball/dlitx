'use strict'

_ = require 'lodash'
Exams = require './exams.model'

# Get list of examss
exports.index = (req, res) ->
  Exams.find (err, examss) ->
    return handleError res, err  if err
    res.status(200).json examss

# Get a single exams
exports.show = (req, res) ->
  Exams.findById req.params.id, (err, exams) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not exams
    res.json exams

# Creates a new exams in the DB.
exports.create = (req, res) ->
  Exams.create req.body, (err, exams) ->
    return handleError res, err  if err
    res.status(201).json exams

# Updates an existing exams in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Exams.findById req.params.id, (err, exams) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not exams
    updated = _.merge exams, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json exams

# Deletes a exams from the DB.
exports.destroy = (req, res) ->
  Exams.findById req.params.id, (err, exams) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not exams
    exams.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
