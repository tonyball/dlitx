'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

BadgesSchema = new Schema
  name: String
  description: String
  image: String
  condition:String
  group:String

module.exports = mongoose.model 'Badges', BadgesSchema