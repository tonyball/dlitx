'use strict'

_ = require 'lodash'
Badges = require './badges.model'

# Get list of badgess
exports.index = (req, res) ->
  Badges.find (err, badgess) ->
    return handleError res, err  if err
    res.status(200).json badgess

# Get a single badges
exports.show = (req, res) ->
  Badges.findById req.params.id, (err, badges) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not badges
    res.json badges

# Creates a new badges in the DB.
exports.create = (req, res) ->
  Badges.create req.body, (err, badges) ->
    return handleError res, err  if err
    res.status(201).json badges

# Updates an existing badges in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Badges.findById req.params.id, (err, badges) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not badges
    updated = _.merge badges, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json badges

# Deletes a badges from the DB.
exports.destroy = (req, res) ->
  Badges.findById req.params.id, (err, badges) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not badges
    badges.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
