# Grizzled Rake

## Intro

This repo contains a gem (as yet unpublished) that [metaprograms][]
[Rake][], as described [in my blog][], to permit Rake output messages to
contain optional timestamps.

## Installation

I have not yet published this gem to *rubygems.org*. Until I do, there are
two ways you can use it:

* Build and install it from source.
* Install and use it from [Bundler][].

### To build and install from source

    $ git clone git://github.com/bmc/grizzled-rake.git
    $ cd grizzled-rake
    $ gem build grizzled-rake.gemspec
    $ gem install grizzled-rake

### To install and use from Bundler

Put the following line in your `Gemfile`:

    gem 'grizzled-rake', :git => 'git://github.com/bmc/grizzled-rake.git'

After saving `Gemfile`, run:

    $ bundle install

Then, ensure that your `Rakefile` has the following lines:

    require 'rubygems'
    require 'bundler/setup'

## To use in your Rakefile

    require 'grizzled-rake'
    
    # Set strftime format to use for timestamps. If this isn't set, then
    # no timestamps are used (i.e., Rake messages look "normal").
    GrizzledRake::TimeFormat::timestamp_format = '[%H:%M:%S.$m]'

I extended the *strftime* escapes to support a `$m` escape, allowing the
insertion of milliseconds into the output. *strftime* does not support that
capability.

**NOTE**: If you're using [Bundler][], be sure that the Grizzled Rake `require`
call comes *after* the Bundler and RubyGems `require` calls.

## Copyright and License

This code is copyright &copy; 2011-2012 Brian M. Clapper and is released under
a BSD License.

[Rake]: http://rake.rubyforge.org/
[metaprograms]: http://practicalruby.blogspot.com/2007/02/ruby-metaprogramming-introduction.html
[in my blog]: http://brizzled.clapper.org/id/109/
[Bundler]: http://gembundler.com/
