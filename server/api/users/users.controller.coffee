'use strict'

_ = require 'lodash'
Users = require './users.model'

# Get list of userss
exports.index = (req, res) ->
  Users.find (err, userss) ->
    return handleError res, err  if err
    res.status(200).json userss

# Get a single users
exports.show = (req, res) ->
  Users.findById req.params.id, (err, users) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not users
    res.json users

# Creates a new users in the DB.
exports.create = (req, res) ->
  Users.create req.body, (err, users) ->
    return handleError res, err  if err
    res.status(201).json users

# Updates an existing users in the DB.
exports.update = (req, res) ->
  delete req.body._id  if req.body._id
  Users.findById req.params.id, (err, users) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not users
    updated = _.merge users, req.body
    updated.save (err) ->
      return handleError res, err  if err
      res.status(200).json users

# Deletes a users from the DB.
exports.destroy = (req, res) ->
  Users.findById req.params.id, (err, users) ->
    return handleError res, err  if err
    return res.status(404).send 'Not Found'  if not users
    users.remove (err) ->
      return handleError res, err  if err
      res.status(204).send 'No Content'

handleError = (res, err) ->
  res.status(500).send err
