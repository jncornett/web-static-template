This is a skeleton static website project that uses:

- grunt as a task runner
- bower to manage javascript dependencies
- coffeescript for scripting
- pug for pages
- less for stylesheets

To get started:

1. clone the project
2. adjust bower.json and package.json to taste
3. run npm install
4. run bower install

The grunt default task is configured to create a deployable
build folder named www

There is also a grunt task named watch that will
efficiently update the build folder when any dependencies
change

As of right now, the grunt scripts task additionally copies
the additional coffeescript source files to www/src.
This is so that the source maps can access the original source
during debugging without reaching outside of the website root.
