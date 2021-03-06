What is this?
=============

This is a (somewhat) opinionated skeleton project for a static website that uses:

- [grunt](http://gruntjs.com/) as a task runner
- [bower](https://bower.io/) to manage javascript dependencies
- [coffeescript](http://coffeescript.org/) for scripting
- [pug](https://github.com/pugjs) (formerly jade) for pages
- [less](http://lesscss.org/) for stylesheets

It's designed to get you up and running in as short of a time as possible. Also, if you can't tell, I like transpiled languages in my client side.

Requirements
============

- First, get [`npm`](https://www.npmjs.com/) if you don't have it already
- Then, install [`bower`](https://bower.io) (i.e. `npm install -g bower`)

Quickstart
==========

1. clone the project
2. edit [`bower.json`](bower.json) and [`package.json`](package.json) to taste
3. let simmer for 15-20 minutes or until soup thickens
4. run `npm install`
5. run `bower install`

Layout/Structure
================

Here are the grunt compilation mappings:

- Pug(Jade) pages in [`./page`](page) -> HTML files in `./www`
- Coffeescript sources in [`./src`](src) -> JavaScript files in `./www/app`
- Less stylesheets in [`./style`](style) -> CSS files in `./www/css`

> The script [`./src/config.coffee`](src/config.coffee)  configures `requirejs` so that source files in [`./src`](src) are available via `app/<name>` and source files from bower are available via `<project-folder>/<base-name>` (thus `bower_components/backbone/backbone.js` is accessed by requiring `backbone/backbone`)

> The grunt default task is configured to create a deployable
build folder at `./www`

> There is a grunt task named `watch` that will
efficiently update the build folder when any dependencies
change.

> As of right now, the grunt scripts task additionally copies
the additional coffeescript source files to `./www/src`.
This is so that the source maps can access the original source
during debugging without reaching outside of the website root.

To Do
=====

- Update [`Gruntfile.coffee`](Gruntfile.coffee) to allow for non-transpiled sources to be installed. This means that I can place plain JavaScript files in [`./src`](src) instead of just Coffeescript files. (and the same for CSS files in [`./style`](style) and HTML files in [`./page`](page))
- Make the mappings more intuitive. [`./src`](src) -> `./www/app` violates Least Surprise, for example.
