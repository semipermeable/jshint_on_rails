##JSHint On Rails
JSHint on rails is a fork project from JSLint_on_rails, adapted to work with jshint.

**Installation Dependencies**
* Java 5 >
* Ruby 1.8 >
* Rails 2 >

## Installation

**Rails 3**
* add `gem 'jshint_on_rails'` to you're projects Gemfile

The first time you run it, a file in config/jshint.yml will be created. It can be customized to fit your needs (well explained below).

As this project is a fork of psionides jslint_on_rails, the instructions are the same. [Click here](https://github.com/psionides/jslint_on_rails/blob/master/README.markdown) to follow his instructions.

## Configuration

After the installation, observe that you'll probably will need to customize some settings, for example, the files you want to test and the ones you want to ignore (ex.: libraries such as jquery, mootools, underscore, etc).

The default config allows you to:
* write single line conditional statements
* ignore whitespaces (to support the option above and still being indented)

## Running

To start checking your stuff run the following:

    [bundle exec] rake jslint

Then you should see:

    Running JSHint:
    
    checking public/javascripts/scripts.js... OK
    checking public/javascripts/models.js... OK
    checking public/javascripts/presenters.js... OK
    
    No JS errors found  =)

If anything is wrong, you will get something like this instead:

    Running JSHint:
    
    checking public/javascripts/scripts.js... 2 errors:
    
    Lint at line 24 character 15: Use '===' to compare with 'null'.
    if (a == null && b == null) {
    
    Lint at line 72 character 6: Extra comma.
    },
    
    
    Found 2 errors =(
    rake aborted!
    JSHint test failed.


If you want to test specific file or files (just once, without modifying the config), you can pass paths to include
and/or paths to exclude to the rake task:

    rake jslint paths=public/javascripts/models/*.js,public/javascripts/lib/*.js exclude_paths=public/javascripts/lib/jquery.js


## Credits

* JSLint on Rails was created by [Jakub Suder](http://psionides.jogger.pl), licensed under MIT License
* JSHint is a fork of JSLint and is maintained by the [JSHint Community](https://github.com/jshint/jshint)
* JSLint was created by [Douglas Crockford](http://jslint.com)
