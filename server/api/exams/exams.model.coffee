'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

ExamsSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Exams', ExamsSchema