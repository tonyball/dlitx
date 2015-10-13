'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

ClassroomsSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Classrooms', ClassroomsSchema