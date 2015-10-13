'use strict'

_ = require 'lodash'
Charts = require './charts.model'

# Get list of chartss
exports.index = (req, res) ->
  Charts.find (err, chartss) ->
    return handleError res, err  if err
    res.status(200).json chartss

# Get a single charts
exports.show = (req, res) ->
  Charts.findById req.params.id, (err, charts) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not charts
    res.json charts

# Creates a new charts in the DB.
exports.create = (req, res) ->
  Charts.create req.body, (err, charts) ->
    return handleError res, err  if err
    res.status(201).json charts

# Updates an existing charts in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Charts.findById req.params.id, (err, charts) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not charts
    updated = _.merge charts, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json charts

# Deletes a charts from the DB.
exports.destroy = (req, res) ->
  Charts.findById req.params.id, (err, charts) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not charts
    charts.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
