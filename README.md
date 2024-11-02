# Rails-like Starter Kit

## Description

This provides the boilerplate to fiddle with a simple Rails-like development environment without any database, not even SQlite.

In this environment you can quickly try out ideas for models, POROs, or services.

## Requirements

- **Ruby:** you probably want to install it using a version manager like `rvm`, `asdf` or `mise`

## Instructions

**Setup:**
Install requirements, then run `$ bundle install`

**Run Tests:**
- Run `$ bin/rspec`
- By the way, tests are initially set to produce **2 examples, 1 failure**, that's good, see TDD section

**TDD:**
- Run `$ bin/retest` in a console, leave it idle
- Open `app/services/hello.rb` in your favorite editor and change "bye world" to "hello world", save changes
- Automatically, your console should run only the test for that file, now passing in green
- Back to the console, type CTLR+C to quit `retest`

**Enter development console:**
- Run `$ bin/console`, your prompt should change to _irb(main)_
- Type `Hello.call` + enter, then your console should print _"hello world!"_
