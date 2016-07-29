requirejs.config
  baseUrl: '../lib'
  paths:
    app: '../app'
    jquery: 'jquery/jquery'  # b/c jquery references itself

requirejs ['app/main']
