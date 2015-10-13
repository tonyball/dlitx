'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

CoursesSchema = new Schema
  name: String
  info: String
  active: Boolean

module.exports = mongoose.model 'Courses', CoursesSchema