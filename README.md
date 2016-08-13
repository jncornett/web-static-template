What is this?
=============

This is a (somewhat) opinionated skeleton project for a static website that uses:

- [grunt](http://gruntjs.com/) as a task runner
- [bower](https://bower.io/) to manage javascript dependencies
- [coffeescript](http://coffeescript.org/) for scripting
- [pug](https://github.com/pugjs) (formerly jade) for pages
- [less](http://lesscss.org/) for stylesheets

Quickstart
==========

1. clone the project
2. adjust bower.json and package.json to taste
3. run npm install
4. run bower install

The grunt default task is configured to create a deployable
build folder at `./www`

There is also a grunt task named `watch` that will
efficiently update the build folder when any dependencies
change.

As of right now, the grunt scripts task additionally copies
the additional coffeescript source files to www/src.
This is so that the source maps can access the original source
during debugging without reaching outside of the website root.
