'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

UsersSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Users', UsersSchema