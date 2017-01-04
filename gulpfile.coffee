gulp = require 'gulp'
fs = require 'fs-extra'
path = require 'path'

cwd = process.cwd()

fs.walkSync 'gulp' # get all filePaths in repository gulp
.filter (filePaths)->
	return /\.js$/.test filePaths
.forEach (filePaths)->
	require "./#{path.relative cwd,filePaths}" # require './gulp/inject.js'

gulp.task 'default',['mainBowerFiles']
