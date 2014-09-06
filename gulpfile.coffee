gulp        = require 'gulp'
runSequence = require 'run-sequence'
requireDir  = require 'require-dir'
dir         = requireDir './task'
browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'default', -> runSequence 'clean', 'icon', 'css'

gulp.task 'watch', ->
  browserSync.init
    notify: false
    server: baseDir: './'
  gulp.watch ['./src/css/**/*.css'], ['css']
  gulp.watch ['./src/font/*.sketch/Data'], ['icon']
  gulp.watch ['./asset/css/style.css', './1.0/*.html'], reload
