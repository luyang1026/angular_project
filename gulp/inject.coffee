gulp = require 'gulp'
$ = require 'gulp-load-plugins'
mainBowerFiles = require 'main-bower-files'

gulp.task 'mainBowerFiles',()->
	console.log mainBowerFiles()
	gulp.src mainBowerFiles()
		.pipe gulp.dest '.tmp'
