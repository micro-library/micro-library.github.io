gulp = require 'gulp'
del  = require 'del'

gulp.task 'clean', (cb) ->
  del ['./asset'], -> cb()
