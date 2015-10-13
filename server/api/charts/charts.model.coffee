'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

ChartsSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Charts', ChartsSchema