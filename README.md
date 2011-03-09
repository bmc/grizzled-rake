# Grizzled Rake

## Intro

This repo contains a gem (as yet unpublished) that [metaprograms][]
[Rake][], as described [in my blog][], to permit Rake output messages to
contain optional timestamps.

## To build

    $ git clone git://github.com/bmc/grizzled-rake.git
    $ cd grizzled-rake
    $ gem build grizzled-rake.gemspec
    $ gem install grizzled-rake

## To use in your Rakefile

    require 'grizzled/rake'
    
    # Set strftime format to use for timestamps. If this isn't set, then
    # no timestamps are used (i.e., Rake messages look "normal").
    GrizzledRake::TimeFormat::timestamp_format = '[%H:%M:%S.$m]'

Note that I extended the *strftime* escapes to support a `$m` escape, allowing
the insertion of milliseconds into the output. *strftime* does not support
that capability.

## Copyright and License

This code is copyright &copy; 2011 Brian M. Clapper and is released under a
BSD License.

[Rake]: http://rake.rubyforge.org/
[metaprograms]: http://practicalruby.blogspot.com/2007/02/ruby-metaprogramming-introduction.html
[in my blog]: http://brizzled.clapper.org/id/109/

