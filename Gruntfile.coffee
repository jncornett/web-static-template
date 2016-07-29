module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    bower:
      install:
        options:
          targetDir: './www/lib'
    coffee:
      compile:
        options:
          sourceMap: true
        files: [
          expand: true
          cwd: './src/'
          src: ['**/*.coffee']
          dest: './www/app'
          ext: '.js'
        ]
    pug:
      compile:
        files: [
          expand: true
          cwd: './page/'
          src: ['**/*.pug']
          dest: './www'
          ext: '.html'
        ]
    less:
      compile:
        files: [
          expand: true
          cwd: './style/'
          src: ['**/*.less']
          dest: './www/css'
          ext: '.css'
        ]
    watch:
      bower:
        files: ['bower.json']
        tasks: ['bower']
      coffee:
        files: ['src/**/*.coffee']
        tasks: ['coffee']
      pug:
        files: ['page/**/*.pug']
        tasks: ['pug']
      less:
        files: ['style/**/*.less']
        tasks: ['style']

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-pug'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['bower', 'coffee', 'pug', 'less']
